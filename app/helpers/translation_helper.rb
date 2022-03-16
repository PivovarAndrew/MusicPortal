module TranslationHelper
  def auto_translate(text)
    EasyTranslate.translate(text, to: :russian)
  end
end
