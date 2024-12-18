import React, { Fragment } from "react";
import { Link } from "react-router-dom";

const EmployeeModuleCard = ({
  Icon,
  moduleName,
  kpis = [],
  links = [],
  isCitizen = false,
  className,
  styles,
  longModuleName = false,
  FsmHideCount,
}) => {
  const ArrowRightInbox = ({ style }) => (
    <svg width="20" height="14" viewBox="0 0 20 14" fill="none" xmlns="http://www.w3.org/2000/svg" style={style}>
      <path d="M13 0L11.59 1.41L16.17 6H0V8H16.17L11.58 12.59L13 14L20 7L13 0Z" fill="#F47738" />
    </svg>
  );
  
  return (
    <div className={className ? className : "employeeCard customEmployeeCardWarning card-home home-action-cards"} style={styles ? styles : {}}>
      <div className="complaint-links-container">
        <div className="header" style={isCitizen ? { padding: "0px" } : longModuleName ? { alignItems: "flex-start" } : {}}>
          <span className="text removeHeight">{moduleName}</span>
          <span className="logo removeBorderRadiusLogo">{Icon}</span>
        </div>
        <div className="body" style={{ margin: "0px", padding: "0px" }}>
          {kpis.length !== 0 && (
            <div className="flex-fit" style={isCitizen ? { paddingLeft: "17px" } : {}}>
              {kpis.map(({ count, label, link }, index) => (
                <div className="card-count" key={index}>
                  <div>
                    <span>{count ? count : count == 0 ? 0 : "-"}</span>
                  </div>
                  <div>
                    {link ? (
                      <Link to={link} className="employeeTotalLink">
                        {label}
                      </Link>
                    ) : null}
                  </div>
                </div>
              ))}
            </div>
          )}


<div className="links-wrapper" style={{ width: "100%" }}>

  
  {links.reduce((acc, { count, label, link, category }, index) => {
    const currentCategory = category;

    // Check if category has changed or is the first item
    if (!acc.currentCategory || acc.currentCategory !== currentCategory) {
      acc.currentCategory = currentCategory;
      acc.links.push({ category, items: [] }); // Create new category object
    }

    // Add link details to the current category
    acc.links[acc.links.length - 1].items.push({ count, label, link });

    return acc;
  }, { currentCategory: null, links: [] }) // Initial accumulator state
  .links.filter(({ items }) => items.length > 0) // Filter out categories with no items
  .map(({ category, items }, index) => (
    <>
      {category && ( // Display category header if category exists
        <div className="category-header">{category}</div>
      )}
      <div className="category-item">
        {items.map((item, subIndex) => (
           <div className="link-row" key={`${index}-${subIndex}`}>
            <span className="link">              
            { item.link && item.link?.includes("https") ? (
                  item.label.includes("Dashboard")?
                  
                  <a href={item.link} target="_blank">
                  {item.label}
                </a> :
                  <a href={item.link} target="">
                    {item.label}
                  </a>
                ) : (
                  <Link to={item.link}>{item.label}</Link>
                )}
              </span>
            {item.count ? (
              <>
                {FsmHideCount ? null : (
                  <span className={"inbox-total"}>{item.count || "-"}</span>
                )}
                <Link to={item.link}>
                  <ArrowRightInbox />
                </Link>
              </>
            ) : null}
          </div>
        ))}
      </div>
    </>
  ))}
</div>


          

          {/* <div className="links-wrapper" style={{ width: "80%" }}>
            {links.map(({ count, label, link,category }, index) => (
              <span className="link" key={index}>
                { link && link?.includes("https") ? (
                  label.includes("Dashboard")?<a href={link} target="_blank">
                  {label}
                </a> :
                  <a href={link} target="">
                    {label}
                  </a>
                ) : (
                  <Link to={link}>{label}</Link>
                )}
                {count ? (
                  <>
                    {FsmHideCount ? null : <span className={"inbox-total"}>{count || "-"}</span>}
                    <Link to={link}>
                      <ArrowRightInbox />
                    </Link>
                  </>
                ) : null}
              </span>
            ))}
          </div> */}
        </div>
      </div>
    </div>
  );
};

export default EmployeeModuleCard;