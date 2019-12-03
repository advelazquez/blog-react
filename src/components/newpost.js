import React from "react";
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.css';
import { Button } from 'react-bootstrap';


class NewPost extends React.Component {
   state = {
    title: '',
    description: ''
  }

  handleChange = event => {
    this.setState({ [event.target.name]: event.target.value });   
  }

  handleSubmit = event => {
    event.preventDefault();

    const title = this.state.title
    const description = this.state.description
    console.log(title)
    console.log(description)
    if( title =='' || description == '' ){
      alert('Los campos no pueden ser vacios')
    }else{
      axios.post(`http://localhost/prueba/api/public/api/blog/nuevo`, {
      title: title, description: description
      })
      .then(function (response) {
        console.log(response);
        console.log(response.data);
        console.log(response.status);
        if( response.data == 'OK' ){
          alert('Post guardado correctamente');
        };
      })
      .catch(function (error) {
        alert('Sucedio un error al intentar guardar el post')
        console.log(error);
      });
      }
    }


  render() {
      
      return (
      <form onSubmit={this.handleSubmit}>
        <input type="text" name="title" onChange={this.handleChange}/>
        <input type="text" name="description" onChange={this.handleChange}/>
        <Button variant="primary" type="submit" >Guardar</Button>
      </form>     
      );
    }
}

export default NewPost;
