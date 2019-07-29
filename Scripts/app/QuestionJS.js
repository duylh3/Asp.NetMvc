$(document).ready(function(){
    $("#Salary").click(function (e) {
        e.preventDefault();
        var cate = $(this).attr("id");
        var template = $("#table-template").html();
        var render = "";
        $.ajax({
            type: "GET",
            data: {
                cate: cate,
                page: 1,
                pageSize: 10
            },
            url: "/Question/GetData",
            dataType: "json",
            success: function (response) {
                if (response.Results.length === 0) {
                    $("#tbl-content").html("");
                    $("#tbl-content").append($("<tr>").append($("<td>").attr("colspan", 8).html("There is no data to display!!").addClass("text-center")));
                }
                $.each(response.Results, function (i, item) {
                    render += Mustache.render(template, {
                        Sequence: i + 1,
                        Id: item.Id,
                        Question: item.Question,
                        Category: item.Category,
                        CreatedBy: item.CreatedBy
                    });

                    if (render != "") {
                        $("#tbl-content").html(render);
                        $("#lblTotalRecord").html(response.RowCount);
                    }
                });
            },
            error: function (status) {
                console.log(status);
            }
        });
    });

    function wrapPaging(recordCount, callBack, changePageSize) {
        var totalSize = Math.ceil(recordCount / common.configs.pageSize);
        //Unbind pagination if it existed or click change pagesize
        if ($("#paginationUl a").length === 0 || changePageSize === true) {
            $("#paginationUl").empty();
            $("#paginationUl").removeData("twbs-pagination");
            $("#paginationUl").unbind("page");
        }
        //Bind Pagination Event
        $("#paginationUl").twbsPagination({
            totalPages: totalSize,
            visiblePages: 7,
            onPageClick: function (e, p) {
                common.configs.pageIndex = p;
                setTimeout(callBack(), 200);
            }
        });
    };

    $("body").on("click", ".btn-edit", function (e) {
        e.preventDefault();
        var that = $(this).data("id");

        alert(that);
        $.ajax({
            type: "GET",
            url: "/Question/GetQuesById",
            data: { id: that },
            dataType: "json",
            beforeSend: function () {
                common.startLoading();
            },
            success: function (response) {
                var data = response;
                resetFormDetail(data);
                $('#modalDetail').modal('show');
                common.stopLoading();

            },
            error: function (status) {
                console.log(status);
                common.notify("Hyosung Motor", 'Có lỗi xảy ra', 'gray error');
                common.stopLoading();
            }
        });
    });

});