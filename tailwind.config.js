const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  mode: 'jit',
  purge: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
  ],
  theme: {
    fontFamily: {
      sans: ['open sans', ...defaultTheme.fontFamily.sans],
      serif: [...defaultTheme.fontFamily.serif],
      mono: [...defaultTheme.fontFamily.mono],
      gloria: ['Gloria Hallelujah', 'cursive'],
    },
    container: (theme) => ({
      center: true,
      padding: {
        default: theme('spacing.8'),
        sm: theme('spacing.24'),
        lg: theme('spacing.40'),
        xl: theme('spacing.60'),
      },
    }),
    extend: {
      colors: {
        main: '#3778c2',
        second: '#5fb523',
        third: '#434b54',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/line-clamp'),
  ],
};
