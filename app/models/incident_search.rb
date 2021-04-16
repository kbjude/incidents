class IncidentSearch
    attr_reader :date_from, :date_to

    def initialize(params)
        params ||= {}
        @date_from = parsed_date(params[:date_from], 20.days.ago.to_date.to_s)
        @date_to = parsed_date(params[:date_to], Date.today.to_s)
    end

    def scope
        Incident.where('date_time BETWEEN ? AND ?', @date_from, @date_to)
    end

    private

    def parsed_date(date_string, default)
        Date.parse(date_string)
    rescue ArgumentError, TypeError
        default
    end
end