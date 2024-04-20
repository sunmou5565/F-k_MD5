const tj = document.getElementById('sr')
const st = document.getElementById("st")
const tp = document.getElementById("tp")
document.getElementById('btn').addEventListener('click', () => {

    if ($("#sr").val()) {
        document.getElementById('btn').innerText="正在查询"
        document.getElementById('btn').disabled=true
        $.ajax({
            type: 'GET',
            url: "../GetMD.php",
            dataType: "json",
            data: {
                va: $("#sr").val()
            },
            success: function (da) {
                if(da.msg!=null){
                    tp.innerText = "md5"
                    st.innerText = da.msg
                }else{
                    tp.innerText = "失败"
                    st.innerText = "未查询出结果"
                }
                document.getElementById('btn').innerText="查询"
                document.getElementById('btn').disabled=false
            }
        });
    } else {
        alert("不能为空！")
    }
})

const loadscreen = document.getElementById("load")
window.addEventListener("load", () => {
    loadscreen.style.display = "none"
})
