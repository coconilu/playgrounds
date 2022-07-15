import React from 'react'
import styles from './style.module.less'

const Loading = () => {
  return (
    <div className={styles.ldsEllipsis}>
      <div />
      <div />
      <div />
      <div />
    </div>
  )
}

export default React.memo(Loading)
