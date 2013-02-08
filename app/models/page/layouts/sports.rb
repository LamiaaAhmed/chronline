class Page::Layouts::Sports < Layout

  def schema
    {
      'slideshow' => {
        'label' => "Slideshow",
        'type' => 'array',
        'required' => true,
        'items' => article_schema,
      },
      'blog' => {
        'label' => 'Blog',
        'type' => 'object',
        'properties' => {
          'url' => {
            'label' => 'URL',
            'type' => 'string',
            'required' => true,
          },
          'feed' => {
            'label' => 'RSS Feed',
            'extends' => rss_schema,
            'required' => true,
          }
        }
      },
      'multimedia' => {
        'label' => 'Embedded Multimedia',
        'type' => 'array',
        'required' => true,
        'items' => {
          'type' => 'string',
          'format' => 'multiline',
        }
      },
      'bottom_articles' => {
        'label' => 'Bottom Articles',
        'type' => 'array',
        'required' => true,
        'items' => article_schema,
      },
    }
  end

end