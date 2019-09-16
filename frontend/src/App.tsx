import React from 'react';
import './App.css';
import { useQuery } from '@apollo/react-hooks';
import { gql } from 'apollo-boost';

const taskQuery = gql`
  {
	tasks {
	  id,
      title
	}
  }
`;

const App: React.FC = () => {
  const {loading, error, data} = useQuery(taskQuery)

  if (loading) {
    return (
      <div>Loading...</div>
    )
  }
  if (error) {
    return (
      <div>Error</div>
    )
  }

  return data.tasks.map(({id, title}) => (
    <div>id: {id}, title: {title}</div>
  ));
}

export default App;
