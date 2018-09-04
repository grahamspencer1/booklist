class BooksController < ApplicationController

  def index

    respond_to do |format|

      format.csv do
        render plain: Book.generate_csv(Book.all)
      end

      format.html
      format.text

    end
  end

end
