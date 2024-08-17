const flashdata = $(".flash-data").data("flashdata");

if (flashdata) {
  Swal({
    title: "login Berhasil ",
    text: "Berhasil " + flashdata,
    type: "success",
  });
}
