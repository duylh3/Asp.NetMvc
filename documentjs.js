$(document).ready(function () {
    $("#Law").click(function (e) {
        e.preventDefault();
        var cate = $(this).attr("id");
        LoadData(cate);
    });

    $("#Labor").click(function (e) {
        e.preventDefault();
        var cate = $(this).attr("id");
        LoadData(cate);
    });

    function LoadData(cate) {
        var template = $("#table-template").html();
        var render = "";
        $.ajax({
            type: "GET",
            data: {
                //   pageSize: 1,
                //   page: 1,
                cate: cate
            },
            url: "/Document/GetData",
            dataType: "json",
            success: function (response) {
                if (response.Results.length === 0) {
                    $("#tbl-content").html("");
                    $("#tbl-content").append($("<tr>").append($("<td>").attr("colspan", 8).html("Không có câu hỏi liên quan!!").addClass("text-center")));
                }

                $.each(response.Results, function (i, item) {
                    render += Mustache.render(template, {
                        Sequence: i + 1,
                        Id: item.Id,
                        DocumentName: item.DocumentName,
                        Category: item.Category,
                        CreatedBy: item.CreatedBy,
                    });
                    if (render != "") {
                        $("#tbl-content").html(render);
                        $("#lblTotalRecord").html(response.RowCount);
                    }
                })
            },
            error: function (status) {
                console.log(status);
            }
        });
    }


    //---------------------- Cau Tra loi ---------------------------------------------//
    $("body").on("click", ".btn-edit", function (e) {
        e.preventDefault();
        var that = $(this).data("id");
        $('#modalDetail').modal('show');
        $.ajax({
            type: "GET",
            url: "/Document/GetDocumentDetail",
            data: { id: that },
            dataType: "json",
            success: function (response) {
                
                var data = response;
                console.log(data);
                var document = '<h5 class="modal-title" id="modalTitle">' + data.DocumentName + '</h5>';
              

                $("#question").append(document);
      

                $('#modalDetail').modal('show');
            },
            error: function (status) {
                console.log(status);
            }
        });
    });
    //---------------------- End ---------------------------------------------//
    function ClearData() {
        $("#question").text("");
        $("#content").text("");
    }
});