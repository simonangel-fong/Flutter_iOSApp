import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fitness_tracker/Views/Layout/base.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      navTitle: "Test",
      body: const TestPageBody(),
    );
  }
}

class TestPageBody extends StatefulWidget {
  const TestPageBody({Key? key}) : super(key: key);

  @override
  State<TestPageBody> createState() => _TestPageState();
}

const htmlData = r"""
      <p id='top'><a href='#bottom'>Scroll to bottom</a></p>
      <h1>Header 1</h1>
      <h2>Header 2</h2>
      <h3>Header 3</h3>
      <h4>Header 4</h4>
      <h5>Header 5</h5>
      <h6>Header 6</h6>
      <h3>Ruby Support:</h3>
      <p>
        <ruby>
          漢<rt>かん</rt>
          字<rt>じ</rt>
        </ruby>
        &nbsp;is Japanese Kanji.
      </p>
      <h3>Support for maxLines:</h3>
      <h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vestibulum sapien feugiat lorem tempor, id porta orci elementum. Fusce sed justo id arcu egestas congue. Fusce tincidunt lacus ipsum, in imperdiet felis ultricies eu. In ullamcorper risus felis, ac maximus dui bibendum vel. Integer ligula tortor, facilisis eu mauris ut, ultrices hendrerit ex. Donec scelerisque massa consequat, eleifend mauris eu, mollis dui. Donec placerat augue tortor, et tincidunt quam tempus non. Quisque sagittis enim nisi, eu condimentum lacus egestas ac. Nam facilisis luctus ipsum, at aliquam urna fermentum a. Quisque tortor dui, faucibus in ante eget, pellentesque mattis nibh. In augue dolor, euismod vitae eleifend nec, tempus vel urna. Donec vitae augue accumsan ligula fringilla ultrices et vel ex.</h5>
      <h3>Support for <code>sub</code>/<code>sup</code></h3>
      Solve for <var>x<sub>n</sub></var>: log<sub>2</sub>(<var>x</var><sup>2</sup>+<var>n</var>) = 9<sup>3</sup>
      <p>One of the most <span>common</span> equations in all of physics is <br /><var>E</var>=<var>m</var><var>c</var><sup>2</sup>.</p>
      <h3>Inline Styles:</h3>
      <p>The should be <span style='color: blue;'>BLUE style='color: blue;'</span></p>
      <p>The should be <span style='color: red;'>RED style='color: red;'</span></p>
      <p>The should be <span style='color: rgba(0, 0, 0, 0.10);'>BLACK with 10% alpha style='color: rgba(0, 0, 0, 0.10);</span></p>
      <p>The should be <span style='color: rgb(0, 97, 0);'>GREEN style='color: rgb(0, 97, 0);</span></p>
      <p>The should be <span style='background-color: red; color: rgb(0, 97, 0);'>GREEN style='color: rgb(0, 97, 0);</span></p>
      <p style="text-align: center;"><span style="color: rgba(0, 0, 0, 0.95);">blasdafjklasdlkjfkl</span></p>
      <p style="text-align: right;"><span style="color: rgba(0, 0, 0, 0.95);">blasdafjklasdlkjfkl</span></p>
      <p style="text-align: justify;"><span style="color: rgba(0, 0, 0, 0.95);">blasdafjklasdlkjfkl</span></p>
      <p style="text-align: center;"><span style="color: rgba(0, 0, 0, 0.95);">blasdafjklasdlkjfkl</span></p>
      <hr/ >
      <h3>Table support (with custom styling!):</h3>
      <table>
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
</table>
      <hr/>

      <h3>List support:</h3>
      <ol>
            <li>This</li>
            <li><p>is</p></li>
            <li>an</li>
            <li>
            ordered
            <ul>
            <li>With<br /><br />...</li>
            <li>a</li>
            <li>nested</li>
            <li>unordered
            <ol style="list-style-type: lower-alpha;" start="5">
            <li>With a nested</li>
            <li>ordered list</li>
            <li>with a lower alpha list style</li>
            <li>starting at letter e</li>
            </ol>
            </li>
            <li>list</li>
            </ul>
            </li>
            <li>list! Lorem ipsum dolor sit amet.</li>
            <li><h2>Header 2</h2></li>
            <h2><li>Header 2</li></h2>
      </ol>
      <h3>Link support:</h3>
      <p>
        Linking to <a href='https://github.com'>websites</a> has never been easier.
      </p>
      <h3>Image support:</h3>
      <h3>Network png</h3>
      <img alt='Google' src='https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg' />
      <h3>Network svg</h3>
      <img src='https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg' />
      """;

class _TestPageState extends State<TestPageBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Html(
        data: htmlData,
      ),
    );
  }
}
