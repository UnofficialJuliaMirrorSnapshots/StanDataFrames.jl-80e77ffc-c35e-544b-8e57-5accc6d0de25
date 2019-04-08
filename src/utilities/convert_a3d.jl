# convert_a3d

# Function that allows federation by setting the `output_format`  in the Stanmodel().

function convert_a3d(a3d_array, cnames, ::Val{:dataframe})
  snames = [Symbol(cnames[i]) for i in 1: length(cnames)]
  [DataFrame(a3d_array[:,:,i], snames) for i in 1:size(a3d_array, 3)]
end
