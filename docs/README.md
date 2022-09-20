# Schematron Tutorial - Declarative Amsterdam 2022

Schematron is an XML based validation language that goes beyond the capabilities of DTD, W3C Schema and RelaxNG. Using XPath expressions, it can validate almost anything in an XML document. It's main use case is in enforcing business rules for XML documents.

[Declarative Amsterdam 2022](https://declarative.amsterdam/) (November 7 and 8, Amsterdam) will kick off with a day of tutorials and workshops. One of these will be an introduction to Schematron.

The [da-2022-schematron GitHub repository](https://github.com/xatapult/da-2022-schematron) is used to host all materials (presentations, exercises, etc.) for this introduction. It will be filled in the weeks leading up to the conference.

## Contents

- [About the tutorial](#tutorial-info)
  - [IMPORTANT: Preparations for the tutorial](#tutorial-preparations) 
- [About Schematron](#about)
  - [What is Schematron?](#what-is-schematron)
  - [Where to find more information](#more-info)
  - [A little history](#history)
- [About the presenter](#presenter)


## <a name="tutorial-info"></a>About the tutorial

The Schematron tutorial will be a mix of theory, demos and practice. If time and technical hurdles allow, attendees can do (simple) exercises to get practice and a feel for the language. The annotated presentation is available.

### <a name="tutorial-preparations"></a>**IMPORTANT:** Preparations for the tutorial

If you would like to follow along and do some of the exercises yourself during the tutorial, you need a working Schematron processor present and working:

- Absolutely the easiest way to follow along is by using the [oXygen XML Editor](https://www.oxygenxml.com/). This is not a free product but you can obtain a trial license. This tutorial contains an oXygen project that makes doing the exercises very easy.
- When you don't want to use oXygen you can use the [SchXslt Schematron processor command line interface](https://github.com/schxslt/schxslt/tree/master/cli). If you want to do this you're on your own, I have very little experience installing and using it.
- And using any other Schematron processor is of course also fine. 


## <a name="about"></a>About Schematron

### <a name="what-is-schematron"></a>What is Schematron?

Let’s try to answer this question with an overview of Schematron’s main high-level characteristics:

- Schematron is a formal schema language in which you can express rules for XML documents.
- There are two types of rules:
  - Assertions: when the condition for an assertion fails, an error message is issued.
  - Reports: when the condition for a report holds, a report message is issued.
- In Schematron you define all the error and report messages in your own words.
- Schematron is expressed in XML: a Schematron schema is an XML document.
- Schematron allows you to specify the underlying language for its expressions. In practice, XPath is the only language supported.
- Schematron can, by design, incorporate constructs from other programming languages. However,
the public implementations support XSLT only.



### <a name="more-info"></a>Where to find more information?

- I wrote a book about Schematron: [Schematron - A language for validating XML](https://xmlpress.net), XML Press, 2022. It explains the language in full.
- [The Schematron website](https://schematron.com/) is maintained by the original designer of the language, Rick Jelliffe.
- [Awesome Schematron](https://github.com/Schematron/awesome-schematron) is a curated list of awesome Schematron tools and applications. It contains links to (all versions of) the specification, interesting articles, and more.

### <a name="history"></a>A little history

Schematron came to life in 1999 in Taiwan with a presentation called “From Grammars to Schematron” by Rick Jelliffe. This eventually resulted, in 2001, in Schematron 1.5, a version based on XSLT 1.0. You could use it anywhere an XSLT processor was available, which was one of the reasons for its success. After this, standardization was taken over by ISO (International Organization for Standardization). This led to the release, in 2006, of ISO Schematron, which added new features such as variables and abstract
patterns.

Development continued and newer versions of XPath and XSLT were incorporated. Through a succession of versions we arrived at what is, in 2022, the most current one: *ISO/IEC 19757-3, Third edition, 2020-06: Information technology - Document Schema Definition Languages (DSDL) - Part&#160;3: Rule-based validation using Schematron*. This is the version used here.


## <a name="presenter"></a>About the presenter

My name is Erik Siegel. [Xatapult](http://www.xatapult.com) is my (one-man) company, specialized in content engineering and XML processing. Most of my clients are in the publishing industry or involved in standardization.

I come from a technical IT background. Xatapult is deliberately looking for content and XML related projects on all levels: from the strategic use of standards to developing processing applications.

I do not just strive for the best solution from a business and technical perspective, but also for optimal understandability. Therefore, documentation is never an afterthought. I consider my ability to explain and clarify complex technical stuff, both live and in prose, as an important non-technical skill.

In my (recent) past I have given several successful courses on topics such as XML, XSLT, XML&#160;Schema and XProc. Most of these courses I developed myself.

I'm the author of three books:

- [Schematron - A language for validating XML](https://xmlpress.net) was published in September 2022 by XML Press.
- [XProc 3.0 Programmer Reference](https://xmlpress.net/publications/xproc-3-0/) was published in 2020 by XML Press. I was a member of the XProc 3.0 editing committee.
- Together with Adam Retter, I wrote 
[a book about eXist-db](http://shop.oreilly.com/product/0636920026525.do), an XML database and processing engine. The book was published by O’Reilly in 2014.

More details about me on my [LinkedIn profile](https://www.linkedin.com/in/esiegel/). You can reach me at [erik@xatapult.nl](mailto:erik@xatapult.nl).

