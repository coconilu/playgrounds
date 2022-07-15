import { createRoot, Root } from "react-dom/client";
import App from "./src/App";

let reactRoot: Root = null;

export async function bootstrap() {
  return Promise.resolve();
}

export async function mount({
  container,
  customProps,
}: {
  container: HTMLElement;
  customProps: object;
}) {
  reactRoot = createRoot(container);
  reactRoot.render(<App propsFromBase={customProps} />);
}

export async function unmount() {
  reactRoot?.unmount();
}
