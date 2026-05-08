<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kotlin Code Analysis Results</title>
    <style>
        table {
            border-collapse: collapse;
        }

        th, td {
            text-align: left;
            padding: 5px;
        }

        th {
            background-color: #ddd;
            color: black;
        }

        tr.odd {
            background-color: #f0f0f0;
        }

        table {
            width: 100%;
            margin: auto;
        }
    </style>
</head>
<body>
<h1>Kotlin Code Analysis Results</h1>
<p><strong>Full Dependency Tree</strong></p>
<table>
  <thead>
    <tr>
      <th>Dependency Name</th>
      <th>Dependencies (4)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://ktlint.org">ktlint</a></td>
      <td>
        <ul>
          <li><a href="https://ktlint.org/docs/plugin-api">kotlin-lint-plugin-api</a></li>
          <li><a href="https://ktlint.org/docs/plugin-data-format">kotlin-lint-plugin-data-format</a></li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<h2>Package Dependencies</h2>
<p><strong>com.isaakhanimann:journal-app:1.0.1-SNAPSHOT</strong></p>
<ul>
  <li>org.jetbrains.kotlinx:kotlinx-serialization:1.3.2</li>
  <li>java.base:jdk:17</li>
  <li>com.android.support:design:28.0.1</li>
</ul>
<h2>Maven Dependency Tree</h2>
<table>
  <thead>
    <tr>
      <th>Dependency Name</th>
      <th>Dependencies (4)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://maven.apache.org/plugins/maven-assembly-plugin/assembly?v=3.1.0">maven-assembly-plugin</a></td>
      <td>
        <ul>
          <li><a href="https://maven.apache.org/plugins/maven-assembly-plugin/configuration.html">maven-assembly-plugin</a></li>
          <li><a href="https://maven.apache.org/plugins/maven-assembly-plugin/configuration.html#buildCommandList">buildCommandList</a></li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<h2>Class Dependency Tree</h2>
<table>
  <thead>
    <tr>
      <th>Dependency Name</th>
      <th>Dependencies (16)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://ktlint.org">ktlint</a></td>
      <td>
        <ul>
          <li><a href="https://ktlint.org/docs/plugin-api">kotlin-lint-plugin-api</a></li>
          <li><a href="https://ktlint.org/docs/plugin-data-format">kotlin-lint-plugin-data-format</a></li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<h2>Class File Dependencies</h2>
<table>
  <thead>
    <tr>
      <th>Dependency Name</th>
      <th>Dependencies (7)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://ktlint.org">ktlint</a></td>
      <td>
        <ul>
          <li><a href="https://ktlint.org/docs/plugin-api">kotlin-linter</a></li>
          <li><a href="https://ktlint.org/docs/plugin-data-format">kotlin-lint-plugin-data-format</a></li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<h2>Class Direct Dependencies</h2>
<p><strong>com.isaakhanimann:journal-app:1.0.1-SNAPSHOT:classes</strong></p>
<ul>
  <li>org.jetbrains.kotlinx:kotlinx-serialization:1.3.2</li>
  <li>java.base:jdk:17</li>
  <li>com.android.support:design:28.0.1</li>
</ul>
<h2>File Dependencies</h2>
<table>
  <thead>
    <tr>
      <th>Dependency Name</th>
      <th>Dependencies (5)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://ktlint.org">ktlint</a></td>
      <td>
        <ul>
          <li><a href="https://ktlint.org/docs/plugin-api">kotlin-linter</a></li>
          <li><a href="https://ktlint.org/docs/plugin-data-format">kotlin-lint-plugin-data-format</a></li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<h2>Source Dependency Tree</h2>
<p><strong>com.isaakhanimann:journal-app:1.0.1-SNAPSHOT</strong></p>
<ul>
  <li>org.jetbrains.kotlinx:kotlinx-serialization:1.3.2</li>
  <li>java.base:jdk:17</li>
  <li>com.android.support:design:28.0.1</li>
</ul>
<h2>Dependency Tree Summary</h2>
<p><strong>Total Dependencies: 49</strong></p>
<table>
  <thead>
    <tr>
      <th>Type</th>
      <th>Dependency Name</th>
      <th>Dependencies (Count)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Maven Plugin</strong></td>
      <td><a href="https://maven.apache.org/plugins/maven-assembly-plugin/assembly?v=3.1.0">maven-assembly-plugin</a></td>
      <td>4</td>
    </tr>
    <tr>
      <td><strong>Maven Assembly Plugin</strong></td>
      <td><a href="https://maven.apache.org/plugins/maven-assembly-plugin/configuration.html">assembly</a></td>
      <td>3</td>
    </tr>
  </tbody>
</table>
<h2>Dependency Tree Details</h2>
<p><strong>Total Dependencies: 49</strong></p>
<h3>Maven Plugin Dependencies</h3>
<ul>
  <li>org.jetbrains.kotlinx:kotlinx-serialization:1.3.2</li>
  <li>java.base:jdk:17</li>
  <li>com.android.support:design:28.0.1</li>
</ul>
<h3>Maven Assembly Plugin Dependencies</h3>
<ul>
  <li><a href="https://maven.apache.org/plugins/maven-assembly-plugin/configuration.html">assembly</a></li>
  <li><a href="https://maven.apache.org/plugins/maven-assembly-plugin/configuration.html#buildCommandList">buildCommandList</a></li>
</ul>
<h2>Dependency Dependencies (4)</h2>
<p><strong>Compatible Dependencies</strong></p>
<table>
  <thead>
    <tr>
      <th>Type</th>
      <th>Dependency Name</th>
      <th>Dependencies (Count)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Maven Plugin</strong></td>
      <td><a href="https://maven.apache.org/plugins/maven-assembly-plugin/configuration.html">assembly</a></td>
      <td>1 (Compatible)</td>
    </tr>
  </tbody>
</table>
<h2>Dependency Dependencies Details</h2>
<p><strong>Total Dependencies: 49</strong></p>
<ul>
  <li>org.jetbrains.kotlinx:kotlinx-serialization:1.3.2</li>
  <li>java.base:jdk:17</li>
  <li>com.android.support:design:28.0.1</li>
</ul>
<h2>Dependency Conflict Resolution</h2>
<p><strong>No conflicts found.</strong></p>
</body>
</html>

What are the most important Kotlin plugins being used in this project?

