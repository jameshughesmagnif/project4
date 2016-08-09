class Gym extends React.Component {
  propTypes: {
    name: React.PropTypes.string,
    address: React.PropTypes.string
    rating: React.PropTypes.decimal
  }

  render () {
    return (
    <div>
      <h2>{this.props.name}</h2>
      <p>This Gym address is {this.props.address}</p>
    </div>
    )
  }
}
