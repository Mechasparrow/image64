# ImageBase64Handler

## What is image64
image64 is a library for elixir that helps convert base64 images into regular image files.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add image64 to your list of dependencies in `mix.exs`:

        def deps do
          [{:image64, "~> 0.0.1"}]
        end

  2. Ensure image64 is started before your application:

        def application do
          [applications: [:image64]]
        end

## Usage

First import the module
`import ImageBase64Handler`

if you want to convert a base64 url and output it to a file 
`base64ToImage(base64data, fileOutputPath)`
This will output the image to the designated `fileOutputPath`

if you want to convert base64 file and convert it to an image file
`base64urlFiletoImage(fileInputPath, fileOutputPath)`

if you want to convert a image to a base64url file
`imagetobase64(fileInputPath, fileOutputPath)`

This will take a image file path and an output file path and output the base64 data into that file

Those are the two key functions to convert to and from base64 images

## Think something should be added?
Open a issue or pull request and I will take a look.
