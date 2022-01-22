const base = "http://localhost:8080/v1/graphql";

async function fetchGraphQL(operationsDoc, operationName, variables) {
    const result = await fetch(
        base,
        {
            method: "POST",
            body: JSON.stringify({
                query: operationsDoc,
                variables: variables,
                operationName: operationName
            })
        }
    );

    return await result.json();
}

const operationsDoc = `
  query FindTechnology($tail: String) {
    long_tails(where: {tail: {_eq: $tail}}) {
      json_id
    }
    technologies {
      description
      id
      title
    }
  }
`;

export function fetchFindTechnology(tail: string) {
    return fetchGraphQL(
        operationsDoc,
        "FindTechnology",
        {"tail": tail}
    );
}