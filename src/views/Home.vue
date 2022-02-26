<template>
  <div class="container">
    <div id="name-container">
      <img id="avatar" src="./../assets/images/av.png" alt="avatar"/>
      <h1>Khanh Ngo</h1>
    </div>
    <div class="title-desc-container">
      <a id="linkedin" href="https://www.linkedin.com/in/ngoduykhanh/" target="_blank" rel="noopener noreferrer"
      ><img class="title-font" src="./../assets/images/linkedin.svg"/>Tech Lead</a>
      <span>/</span>
      <a id="github" href="https://github.com/ngoduykhanh" target="_blank" rel="noopener noreferrer"
      ><img class="title-font" src="./../assets/images/github.svg"/>Developer</a>
      <span>/</span>
      <a id="blog" href="https://blog.ndk.name" target="_blank" rel="noopener noreferrer"
      ><img class="title-font" src="./../assets/images/blog.svg"/>Blogger</a>
      <span>/</span>
      <a id="gamer" href="https://steamcommunity.com/id/dingvn" target="_blank" rel="noopener noreferrer"
      ><img class="title-font" src="./../assets/images/gamer.svg"/>Gamer</a>
    </div>
    <div class="article">
      <h2>WHO AM I</h2>
      <p>
        I'm <i>Khanh</i> with the ID <i>ngoduykhanh</i>. Some other variations:
        <a href="https://www.linkedin.com/in/ngoduykhanh/" target="_blank" rel="noopener noreferrer">@ngoduykhanh</a> /
        <a href="https://twitter.com/ngokhanhit" target="_blank" rel="noopener noreferrer">@ngokhanhit</a> /
        <a href="https://steamcommunity.com/id/dingvn/" target="_blank" rel="noopener noreferrer">@dingvn</a>. You may
        know me from GitHub / LinkedIn or other places. Yes, those are also me.
      </p>

      <h2>Facts</h2>
      <ul>
        <li>
          🎓 Bachelor of Engineering in Computer and Communication Networks, GPA 8.3/10
        </li>
        <li>
          💼 Tech Lead at a Fintech company in Berlin
        </li>
        <li>
          🧐 Interested in programming & building large scale systems
        </li>
        <li>
          🌱 Love learning new technologies
        </li>
        <li>
          ⛵ Encouraging people for open source collaborations
        </li>
        <li>
          ✍ I write my personal thoughts on Tech in my <a href="https://blog.ndk.name"> personal blog</a>
        </li>
      </ul>
      <h2>Specialize in</h2>
      <ul>
        <li>
          💪 Cloud services (AWS, GCP, Azure)
        </li>
        <li>
          💪 Building automation tooling
        </li>
        <li>
          💪 Linux & large scale infrastructure
        </li>
        <li>
          💪 Container & container orchestration (Docker, K8s - self-hosted & managed cluster)
        </li>
        <li>
          💪 Software development (Python, Golang)
        </li>
      </ul>
      <h2>Contact</h2>
      <p>
        You can reach out to me via email <a href="mailto:k@ndk.name">k@ndk.name</a>.
        To make the conversation secure, you can encrypt the data using my <a href="https://ndk.name/pgp.asc">
        GPG public key</a>. You can also pull and import my GPG public key with:
      </p>
      <pre>curl https://ndk.name/pgp.asc | gpg --import</pre>
    </div>
  </div>
</template>

<style lang="css" scoped>
#name-container {
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  align-items: center;
}

#avatar {
  width: 42px;
  height: 42px;
  border-radius: 50%;
  margin-right: 12px;
}

#copyright:hover {
  border: none;
}

.title-font {
  width: 16px;
  height: 16px;
  margin-right: 4px;
}

.title-desc-container {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  margin: 8px 0;
}

.title-desc-container a {
  display: flex;
  align-items: center;
}

.title-desc-container span {
  margin: 0px 4px;
}

.title-desc-container #linkedin {
  color: #0070f3;
}

.title-desc-container #github {
  color: #2c974b;
}

.title-desc-container #gamer {
  color: #ca2c2a;
}

.title-desc-container #blog {
  color: #9a1972;
}
</style>
