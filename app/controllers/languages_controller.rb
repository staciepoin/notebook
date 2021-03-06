class LanguagesController < ContentController
  private

  def content_params
    params.require(:language).permit(content_param_list)
  end

  def content_param_list
    %i(
      name other_names universe_id
      history typology dialectical_information register
      phonology
      grammar
      numbers quantifiers
      notes private_notes
    ) + [
      custom_attribute_values:     [:name, :value]
    ]
  end
end
