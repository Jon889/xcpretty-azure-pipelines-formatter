
class AzurePipelinesFormatter < XCPretty::Simple

  def logIssue(type, sourcepath, line, column, message)
    STDOUT.puts "##vso[task.logissue type=#{type};sourcepath=#{sourcepath};linenumber=#{line};columnnumber=#{column};]#{message}"
  end

  # Errors and warnings.
  def format_compile_error(file_name, file_path, reason, line, cursor);     logIssue("error", file_path, line, cursor, reason); super; end
  def format_error(message);                                                super; end
  def format_file_missing_error(error, file_path);                          super; end
  def format_ld_warning(message);                                           super; end
  def format_undefined_symbols(message, symbol, reference);                 super; end
  def format_duplicate_symbols(message, file_paths);                        super; end
  def format_warning(message);                                              super; end
  def format_compile_warning(file_name, file_path, reason, line, cursor);   logIssue("warning", file_path, line, cursor, reason); super; end

end

AzurePipelinesFormatter
