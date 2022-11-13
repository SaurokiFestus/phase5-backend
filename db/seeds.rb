# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

15.times do
    Question.create(
        title: Faker::Lorem.sentence(word_count: 3),
        body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
        user_id:rand(1..4),
        views:rand(1..4)

    )
end

48.times do
    Answer.create(
        body: Faker::Lorem.paragraph(sentence_count: 3, supplemental: false, random_sentences_to_add: 4),
        downvote: rand(1..10),
        upvote: rand(1..10),
        question_id: rand(1..15)
    )
end

48.times do
    Answer.create(
        body: Faker::Lorem.paragraph(sentence_count: 3, supplemental: false, random_sentences_to_add: 4),
        downvote: rand(1..10),
        upvote: rand(1..10),
        question_id: rand(1..15),
        user_id:rand(1..5)
    )
end

50.times do
    Comment.create(
                body: Faker::Lorem.paragraph(sentence_count: 4, supplemental: false, random_sentences_to_add: 4),
                user_id: rand(1..4),
                answer_id: rand(1..48)
    )
end

TagQ.create(
    tag_name:'javascript',
    tag_description:'For questions about programming in ECMAScript (JavaScript/JS) and its different dialects/implementations (except for ActionScript). Keep in mind that JavaScript is NOT the same as Java! Include all labels that are relevant to your question; e.g., [node.js], [jQuery], [JSON], [ReactJS], [angular], [ember.js], [vue.js], [typescript], [svelte], etc.'
)
TagQ.create(
    tag_name:'html',
    tag_description:'HTML (HyperText Markup Language) is the markup language for creating web pages and other information to be displayed in a web browser. Questions regarding HTML should include a minimal reproducible example and some idea of what you~re trying to achieve. This tag is rarely used alone and is often paired with [CSS] and [JavaScript].'
)
TagQ.create(
    tag_name:'python',
    tag_description:'Python is a multi-paradigm, dynamically typed, multi-purpose programming language. It is designed to be quick to learn, understand, and use, and enforces a clean and uniform syntax. Please note that Python 2 is officially out of support as of 2020-01-01. For version-specific Python questions, add the [python-2.7] or [python-3.x] tag. When using a Python variant (e.g. Jython, PyPy) or library (e.g. Pandas, NumPy), please include it in the tags.'
)
TagQ.create(
    tag_name:'java',
    tag_description:'Java is a high-level object-oriented programming language. Use this tag when you`re having problems using or understanding the language itself. This tag is frequently used alongside other tags for libraries and/or frameworks used by Java developers.'
)
TagQ.create(
    tag_name:'c#',
    tag_description:'C# (pronounced `see sharp`) is a high level, statically typed, multi-paradigm programming language developed by Microsoft. C# code usually targets Microsoft`s .NET family of tools and run-times, which include .NET, .NET Framework, .NET MAUI, and Xamarin among others. Use this tag for questions about code written in C# or about C# formal specification. View tag'
)
TagQ.create(
    tag_name:'php',
    tag_description:'HP is a widely used, open source, general-purpose, multi-paradigm, dynamically typed and interpreted scripting language designed initially for server-side web development. Use this tag for questions about programming in the PHP language.'
)
TagQ.create(
    tag_name:'android',
    tag_description:'Android is Google`s mobile operating system, used for programming or developing digital devices (Smartphones, Tablets, Automobiles, TVs, Wear, Glass, IoT). For topics related to Android, use Android-specific tags such as android-intent, android-activity, android-adapter, etc. For questions other than development or programming but related to the Android framework, use this link: https://android.stackexchange.com.'
)
TagQ.create(
    tag_name:'css',
    tag_description:'CSS (Cascading Style Sheets) is a representation style sheet language used for describing the look and formatting of HTML (HyperText Markup Language), XML (Extensible Markup Language) documents and SVG elements including (but not limited to) colors, layout, fonts, and animations. It also describes how elements should be rendered on screen, on paper, in speech, or on other media.'
)
TagQ.create(
    tag_name:'reactjs',
    tag_description:'React is a JavaScript library for building user interfaces. It uses a declarative, component-based paradigm and aims to be efficient and flexible.'
)
TagQ.create(
    tag_name:'sql',
    tag_description:'Structured Query Language (SQL) is a language for querying databases. Questions should include code examples, table structure, sample data, and a tag for the DBMS implementation (e.g. MySQL, PostgreSQL, Oracle, MS SQL Server, IBM DB2, etc.) being used. If your question relates solely to a specific DBMS (uses specific extensions/features), use that DBMS`s tag instead. Answers to questions tagged with SQL should use ISO/IEC standard SQL'
)
TagQ.create(
    tag_name:'ruby-on-rails',
    tag_description:'Ruby on Rails is an open source full-stack web application framework written in Ruby. It follows the popular MVC framework model and is known for its "convention over configuration" approach to application development.'
)
TagQ.create(
    tag_name:'ruby',
    tag_description:'Ruby is a multi-platform open-source, dynamic object-oriented interpreted language. The [ruby] tag is for questions related to the Ruby language, including its syntax and its libraries. Ruby on Rails questions should be tagged with [ruby-on-rails].'
)
TagQ.create(
    tag_name:'django',
    tag_description:'Django is an open-source server-side web application framework written in Python. It is designed to reduce the effort required to create complex data-driven websites and web applications, with a special focus on less code, no-redundancy and being more explicit than implicit.'
)
TagQ.create(
    tag_name:'json',
    tag_description:'JSON (JavaScript Object Notation) is a serializable data interchange format that is a machine and human readable. Do not use this tag for native JavaScript objects or JavaScript object literals. Before you ask a question, validate your JSON using a JSON validator such as JSONLint (https://jsonlint.com).'
)
TagQ.create(
    tag_name:'postgresql',
    tag_description:'PostgreSQL is an open-source, relational database management system (RDBMS) available for all major platforms, including Linux, UNIX, Windows and OS X. Mention your version of Postgres when asking questions. Consider dba.stackexchange.com for questions concerning the administration or advanced features.'
)
TagQ.create(
    tag_name:'git',
    tag_description:'Git is an open-source distributed version control system (DVCS). Use this tag for questions about Git usage and workflows. Do not use this tag for general programming questions that happen to involve a Git repository. Do not use this tag for GitHub/GitHub Actions questions that do not involve git usage; use [github] or [github-actions] instead. Do not use the [github] tag for Git-related issues just because a repository happens to be hosted on GitHub.'
)
TagQ.create(
    tag_name:'database',
    tag_description:'A database is an organized collection of data. It is the collection of schemas, tables, queries, reports, views, and other objects. The data are typically organized to model aspects of reality in a way that supports processes requiring information. Use this tag if you have questions about designing a database. If it is about a particular database management system, (e.g., MySQL), please use that tag instead.'
)
TagQ.create(
    tag_name:'argorithm',
    tag_description:'An algorithm is a sequence of well-defined steps that defines an abstract solution to a problem. Use this tag when your issue is related to algorithm design.'
)
TagQ.create(
    tag_name:'c++',
    tag_description:'C++ is a general-purpose programming language. It was originally designed as an extension to C and has a similar syntax, but it is now a completely different language. Use this tag for questions about code (to be) compiled with a C++ compiler. Use a version-specific tag for questions related to a specific standard revision [C++11], [C++14], [C++17], [C++20] or [C++23], etc.'
)

