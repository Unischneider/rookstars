import Typed from 'typed.js';

new Typed('#title-typed', {
  strings: ["saving the world. ^500", "protecting our oceans. ^500", "gender equality. ^500", "promoting human rights. ^500", "fighting climate change. ^500"],
  typeSpeed: 50,
  /**
   * @property {boolean} loop loop strings
   * @property {number} loopCount amount of loops
   */
  loop: true,
  loopCount: 50
});
