import * as React from "react";

import Story from "../Story/Story";
import NoResults from "./NoResults";
import { SearchContext } from "../../providers/SearchProvider";
import { AlgoliaResults } from "../../providers/Search.types";
import { parse } from "query-string";

const shouldShowNoResults = (hits, isLoading): boolean => {
  return hits !== null && !hits.length && !isLoading;
};

const computePosition = (
  index: number,
  hitsPerPage: number,
  page: number
): number => {
  return hitsPerPage * page + index + 1;
};

const SearchResults: React.FC = () => {
  const {
    results,
    loading,
    settings: { hitsPerPage, page }
  } = React.useContext(SearchContext);

  React.useEffect(() => {
    if (document.scrollingElement) {
      document.scrollingElement.scrollTop = 0;
    }
  }, [results]);

  const params = parse(window.location.search);

  return (
    <section className="SearchResults">
      {shouldShowNoResults(results.hits, loading) && <NoResults />}
      <div className="SearchResults_container">
        {results.hits &&
          (results.hits as AlgoliaResults["hits"]).map((hit, i) => (
            <Story
              hit={hit}
              key={hit.objectID}
              position={computePosition(i, hitsPerPage, page)}
              hideStoryText={params.storyText === "none"}
              highlightStoryText={params.storyText !== "show"}
            />
          ))}
      </div>
    </section>
  );
};

export default SearchResults;
