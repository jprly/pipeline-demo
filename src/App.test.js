import { render, screen } from '@testing-library/react';
import App from './App';

test('renders deployed by Jenkins text', () => {
  render(<App />);
  const linkElement = screen.getByText(/Jenkins/i);
  expect(linkElement).toBeInTheDocument();
});
