# Use an official Jekyll image as the base
FROM jekyll/jekyll:4

# Set the working directory inside the container
WORKDIR /srv/jekyll

# Copy the Jekyll project files into the container
COPY . /srv/jekyll

# Install dependencies (if needed)
# RUN bundle install

# Expose the default Jekyll port
EXPOSE 4000

# Command to run Jekyll serve
CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]

#docker build -t my-jekyll-image .
#docker run --rm -it -p 4000:4000 -v $(pwd):/srv/jekyll my-jekyll-image
