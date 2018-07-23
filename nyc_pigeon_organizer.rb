def nyc_pigeon_organizer(data)
  new_hash = {  }
  
  data.each do |attribute, description|
   
    description.each do |key, array|
      array.each do |name|
       
       if new_hash[name] == nil
        new_hash[name] = { }
        new_hash[name][attribute] = [key.to_s]
        
       else
         if new_hash[name][attribute] == nil
            new_hash[name][attribute] = [ ]
            new_hash[name][attribute].push(key.to_s)
        else
            new_hash[name][attribute].push(key.to_s)

    
end
end
  
end
end
  end  
  
  
  
  new_hash
end


