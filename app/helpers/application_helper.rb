module ApplicationHelper
  def flash_notification_styles(type)
    icon = '<path stroke-linecap="round"
    stroke-linejoin="round"
    stroke-width="2"
    d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
    />'
    icon_color = 'text-green-300'
    bg_color = 'bg-green-900'
    text_color = 'text-green-100'

    if type == 'error'
      icon = '<path stroke-linecap="round"
      stroke-linejoin="round" stroke-width="2"
      d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0
       2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />'
      icon_color = 'text-indigo-300'
      bg_color = 'bg-indigo-900'
      text_color = 'text-indigo-100'
    end

    {
      icon: icon,
      icon_color: icon_color,
      bg_color: bg_color,
      text_color: text_color
    }
  end
end
