import { FC, useState } from "react";
import { useEvent } from "../hooks/useEvent";
import DemoChild from "./DemoChild";

const Demo: FC<{ onClick?: () => void }> = ({ onClick }) => {
  const [times, setTimes] = useState(0);
  const onClickFunc = useEvent(() => {
    setTimes(times + 1);
  });

  // const onClickFunc = useCallback(() => {
  //   setTimes(times + 1);
  // }, [times]);

  console.log("render Demo");

  return (
    <>
      <div onClick={onClickFunc}>Demo: {times}</div>
      <DemoChild onClick={onClickFunc} />
    </>
  );
};

export default Demo;
