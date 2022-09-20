import React from 'react';
import TestimonialCard from 'material-testimonial-card';
import { withComponentFeatures } from 'universal-dashboard';

const UDTestimonial = props => {
  return (
  <div key={props.id}>
    <TestimonialCard
        name={props.name}
        image={props.image}
        content={props.content}
        project={props.project}
    />
  </div>
  );
}

export default withComponentFeatures(UDTestimonial)