import React from "react";
import axios from 'axios';



class Posts extends React.Component {
    state = {
    posteos: []
  }

  componentDidMount() {
    axios.get(`http://localhost/prueba/api/public/api/blog`)
      .then(res => {
        const posteos = res.data;
        this.setState({ posteos });
      })
    .catch(function (error) {
      alert('Sucedio un error al recuperar los posteos del blog')
      console.log(error);
    });
  }

  render() {
    return (
      <ul>
        { this.state.posteos.map(blogInfo =>
          <ul key={blogInfo.id}>
          <p>Titulo: {blogInfo.title}</p>
          <p>Descripcion: {blogInfo.description}</p>
          <hr></hr>
          </ul>
        )}
      </ul>
    )
  }
}

export default Posts;
