defmodule ImageBase64Handler do
  ## Note that these are url encoding and decoding
  import Base


  def base64FileToImage(fileInputPath, fileOutputPath) do
    {:ok, base64data} = File.read(fileInputPath)
    base64ToImage(base64data, fileOutputPath)
  end

  def base64ToImage(base64data, fileOutputPath) do
    imgdata = url_decode64!(base64data)
    {:ok, file} = File.open(fileOutputPath, [:write])
    IO.binwrite(file, imgdata)
    File.close(file)
    true
  end

  def imagetobase64url(fileInputPath, fileOutputPath) do
    {:ok, imageData} = File.read(fileInputPath)
    base64data = url_encode64(imageData)
    {:ok, file} = File.open(fileOutputPath, [:write])
    IO.binwrite(file, base64data)
    File.close(file)
  end

end
