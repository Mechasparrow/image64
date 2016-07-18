defmodule ImageBase64HandlerTest do
  use ExUnit.Case
  doctest ImageBase64Handler

  test "simple image conversion" do
    ImageBase64Handler.imagetobase64url("testfiles/birdie.png", "testbuild/test.base64")
    ImageBase64Handler.base64FileToImage("testbuild/test.base64","testbuild/birdie.png")

    {:ok, file1} = File.read("testbuild/birdie.png")
    {:ok, file2} = File.read("testfiles/birdie.png")

    assert file1 == file2
  end



end
