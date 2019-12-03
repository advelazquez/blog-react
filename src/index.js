import React from "react";
import ReactDOM from "react-dom";
import "./index.css";
import {
  Route,
  BrowserRouter as Router,
  Switch
} from "react-router-dom";
import Posts from "./components/posts.js";
import NewPost from './components/newpost.js'
import Notfound from "./notfound";
import 'bootstrap/dist/css/bootstrap.css';
import { Button } from 'react-bootstrap';

const routing = (
  <Router>
    <div>  

      <Button variant="primary" href="/">Posteos</Button>                       
      <Button variant="primary" href="/admin/posts/create">Nuevo post</Button>
      
      <Switch>
        <Route exact path="/" component={Posts}/>
        <Route path="/admin/posts/create" component={NewPost} />
        <Route component={Notfound} />
      </Switch>      
    </div>
  </Router>
);

ReactDOM.render(routing, document.getElementById("root"));
