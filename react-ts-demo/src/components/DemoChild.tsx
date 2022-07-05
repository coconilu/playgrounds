import { FC, useEffect } from "react";

const DemoChild: FC<{ onClick?: () => void }> = ({ onClick }) => {
  console.log("DemoChild render");

  useEffect(() => {
    console.log("onClick update");
  }, [onClick]);

  return <div onClick={onClick}>DemoChild</div>;
};

export default DemoChild;
