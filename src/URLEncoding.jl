module URLEncoding

LIB = "./liburlencoding.so"
if Sys.iswindows()
    LIB = "./liburlencoding.dll"
elseif Sys.isapple()
    LIB = "./liburlencoding.dylib"
end

export encode, encodebinary, decode, decodebinary

function encode(data::String)::String
  res = ccall((:url_encoding_encode, LIB), Ptr{Cchar}, (Cstring,), data)
  if res === C_NULL
    return ""
  end
  str = unsafe_string(res)
  ccall((:url_encoding_free, LIB), Cvoid, (Ptr{Cchar},), res)
  return str
end

function encodebinary(data::String)::String
  res = ccall((:url_encoding_encode_binary, LIB), Ptr{Cchar}, (Cstring, Csize_t), data, length(data))
  if res === C_NULL
    return ""
  end
  str = unsafe_string(res)
  ccall((:url_encoding_free, LIB), Cvoid, (Ptr{Cchar},), res)
  return str
end

function decode(data::String)::String
  res = ccall((:url_encoding_decode, LIB), Ptr{Cchar}, (Cstring,), data)
  if res === C_NULL
    return ""
  end
  str = unsafe_string(res)
  ccall((:url_encoding_free, LIB), Cvoid, (Ptr{Cchar},), res)
  return str
end

function decodebinary(data::String)::String
  res = ccall((:url_encoding_decode_binary, LIB), Ptr{Cchar}, (Cstring, Csize_t), data, length(data))
  if res === C_NULL
    return ""
  end
  str = unsafe_string(res)
  ccall((:url_encoding_free, LIB), Cvoid, (Ptr{Cchar},), res)
  return str
end

end # URLEncoding
