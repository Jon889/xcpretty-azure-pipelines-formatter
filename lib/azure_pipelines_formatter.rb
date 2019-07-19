
class AzurePipelinesFormatter < XCPretty::Simple

  # Errors and warnings.
  def format_compile_error(file_name, file_path, reason, line, cursor);     super; end
  def format_error(message);                                                super; end
  def format_file_missing_error(error, file_path);                          super; end
  def format_ld_warning(message);                                           super; end
  def format_undefined_symbols(message, symbol, reference);                 super; end
  def format_duplicate_symbols(message, file_paths);                        super; end
  def format_warning(message);                                              super; end
  def format_compile_warning(file_name, file_path, reason, line, cursor);   super; end

end

AzurePipelinesFormatter
