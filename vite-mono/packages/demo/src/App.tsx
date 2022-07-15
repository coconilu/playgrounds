import { basePath } from 'common/constants';
import history from 'common/utils/history';
import type { FC } from 'react';
import { unstable_HistoryRouter as HistoryRouter } from 'react-router-dom';
interface IProps {
  propsFromBase?: Record<string, any>;
}

const App: FC<IProps> = () => {
  return (
    <HistoryRouter basename={`${basePath}/demo`} history={history}>
      <div>{'hello demo'}</div>
    </HistoryRouter>
  );
};

export default App;
