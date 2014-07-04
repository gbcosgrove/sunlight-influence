def string_constructor(args)
  args.each do |k, v|
    val = search_format(k)
    "#{k}=#{val}"
  end
end

