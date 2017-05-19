module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /Period Management/ then '/months'
    when /Rules Management/ then '/rulesiis'
    when /Process Management/ then '/months/fase' 
    when /Clientes/ then '/aparties/index_AI_AC'
    when /Gestao de Pool/ then '/aparties/gestao_pool'  
    when /criar Criterio de Alocação/ then '/allocations/new'   
    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
World(FactoryGirl::Syntax::Methods)
