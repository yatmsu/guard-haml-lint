require 'guard/compat/plugin'

module Guard
  class HamlLint < Plugin

    DEFAULT_OPTIONS = {
      all_on_start: true
    }

    attr_reader :options

    # Initializes a Guard plugin.
    # Don't do any work here, especially as Guard plugins get initialized even if they are not in an active group!
    #
    # @param [Hash] options the custom Guard plugin options
    # @option options [Array<Guard::Watcher>] watchers the Guard plugin file watchers
    # @option options [Symbol] group the group this Guard plugin belongs to
    # @option options [Boolean] any_return allow any object to be returned from a watcher
    #
    def initialize(options = {})
      super
      @options = DEFAULT_OPTIONS
                   .merge({ haml_dires: default_haml_dirs })
                   .merge(options)
    end

    # Called once when Guard starts. Please override initialize method to init stuff.
    #
    # @raise [:task_has_failed] when start has failed
    # @return [Object] the task result
    #
    def start
      run if @options[:all_on_start]
    end

    # Called when `reload|r|z + enter` is pressed.
    # This method should be mainly used for "reload" (really!) actions like reloading passenger/spork/bundler/...
    #
    # @raise [:task_has_failed] when reload has failed
    # @return [Object] the task result
    #
    def reload
      run
    end

    # Called when just `enter` is pressed
    # This method should be principally used for long action like running all specs/tests/...
    #
    # @raise [:task_has_failed] when run_all has failed
    # @return [Object] the task result
    #
    def run_all
      run
    end

    # Called on file(s) additions that the Guard plugin watches.
    #
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_additions has failed
    # @return [Object] the task result
    #
    def run_on_additions(paths)
      run(paths)
    end

    # Called on file(s) modifications that the Guard plugin watches.
    #
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_modifications has failed
    # @return [Object] the task result
    #
    def run_on_modifications(paths)
      run(paths)
    end

    # Called on file(s) removals that the Guard plugin watches.
    #
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_removals has failed
    # @return [Object] the task result
    #
    def run_on_removals(paths)
      run(paths)
    end

    private
    # Watcher.match_files(self, Dir.glob("#{@options[:haml_dires]}/**/*.haml"))
    def run(_paths = [])
      Guard::Compat::UI.info 'Running HAML-Lint for all haml files'

      command = ['haml-lint']
      if _paths.empty?
        command.concat @options[:haml_dires]
      else
        command.concat _paths
      end

			throw :task_has_failed unless system(*command)
    end

    # @return [Array<String>] haml directory paths
    #
    def default_haml_dirs
      File.exists?('app/views') ? ['app/views'] : ['.']
    end

  end
end
