# Проверяем длину названия PR
fail("Название Pull Request должно быть более подробным!") if github.pr_title.length < 10

# Проверяем, начинается ли название PR с заглавной буквы
fail("Название Pull Request должно начинаться с заглавной буквы!") unless github.pr_title =~ /^[A-ZА-Я]/

# Проверка, добавлены ли тесты для новых файлов
has_tests = git.modified_files.any? { |file| file.include?("/test/") }
warn("Похоже, что не добавлены новые тесты") unless has_tests