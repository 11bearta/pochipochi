$(function(){
//キーボード操作などにより、オーバーレイが多重起動するのを防止する。
$(this).blur() ; //ボタンからフォーカスを外す
if($("#modal-overlay")[0]) return false ;
//オーバーレイ用のHTMLコードを、[body]内の最後に生成する
$("body").append('<div id="modal-overlay"></div>');

//オーバーレイ用のHTMLコードを、[body]内の最後に生成する
$("#modal-overlay").fadeIn("slow");
}
)