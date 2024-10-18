export class TocDesktop {
  /* Tocbot options Ref: https://github.com/tscanlin/tocbot#usage */
  static options = {
    tocSelector: '#toc',
    contentSelector: '.content',
    headingSelector: 'h1, h2, h3, h4',
    orderedList: false,
    scrollSmooth: false,
    headingsOffset: 16 * 2, // 2rem
    collapseDepth: 6
  };

  static refresh() {
    tocbot.refresh(this.options);
  }

  static init() {
    if (document.getElementById('toc-wrapper')) {
      tocbot.init(this.options);
    }
  }
}
