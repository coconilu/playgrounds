import { useEvent } from '@hooks/utils';
import cn from 'classnames';
import Loading from '@/ui/Loading';
import React, { FC, memo, useRef } from 'react';
import styles from './style.module.less';

interface IProps {
  needMask?: boolean;
  maskCls?: string;
}

const FullPage: FC<IProps> = ({ needMask = false, maskCls }) => {
  const maskRef = useRef<HTMLDivElement>(null);

  const forbidClick: React.MouseEventHandler<HTMLDivElement> = useEvent((e) => {
    if (needMask) {
      e.preventDefault & e.preventDefault();
      e.stopPropagation && e.stopPropagation();
    }
  });
  const forbidTouchMove: React.TouchEventHandler<HTMLDivElement> = useEvent(
    (e) => {
      if (needMask) {
        e.preventDefault & e.preventDefault();
        e.stopPropagation && e.stopPropagation();
      }
    },
  );

  return (
    <div
      ref={maskRef}
      onClick={forbidClick}
      onTouchMove={forbidTouchMove}
      className={cn(styles.loadingWrapper, maskCls)}
    >
      <Loading />
    </div>
  );
};

export default memo(FullPage);
