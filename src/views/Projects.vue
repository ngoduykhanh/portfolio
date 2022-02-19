<template>
  <div class="container">
    <h1>Projects</h1>
    <p>My open-source projects on GitHub:</p>

    <GitHubCard
        title="PowerDNS-Admin"
        link="hhttps://github.com/PowerDNS-Admin/PowerDNS-Admin"
        :info="PDAInfo"
        :loading="loading"
    >
      <p>
        A PowerDNS web interface with advanced features
      </p>
    </GitHubCard>

    <GitHubCard
        title="wireguard-ui"
        link="https://github.com/ngoduykhanh/wireguard-ui"
        :info="WgUiInfo"
        :loading="loading"
    >
      <p>
        Wireguard VPN web management
      </p>
    </GitHubCard>

    <GitHubCard
        title="ifconfig.top"
        link="https://github.com/ngoduykhanh/ifconfig.top"
        :info="ifconfigInfo"
        :loading="loading"
    >
      <p>
        A web service to answer <i>what's my ip address</i>. I deployed it at <a href="https://ifconfig.top">ifconfig.top</a>.
      </p>
    </GitHubCard>
  </div>
</template>

<script>
import GitHubCard from '@/components/GitHubCard.vue'

export default {
  components: {
    GitHubCard,
  },
  data() {
    return {
      loading: true,
      PDAInfo: {
        stargazers_count: 0,
        forks_count: 0,
      },
      WgUiInfo: {
        stargazers_count: 0,
        forks_count: 0,
      },
      ifconfigInfo: {
        stargazers_count: 0,
        forks_count: 0,
      },
    }
  },
  mounted() {
    const githubApiUrl = 'https://api.github.com/repos'

    const PDAAxios = this.axios.get(`${githubApiUrl}/PowerDNS-Admin/PowerDNS-Admin`)
    const WgUiAxios = this.axios.get(`${githubApiUrl}/ngoduykhanh/wireguard-ui`)
    const ifconfigAxios = this.axios.get(`${githubApiUrl}/ngoduykhanh/ifconfig.top`)

    this.axios
        .all([PDAAxios, WgUiAxios, ifconfigAxios])
        .then(
            this.axios.spread((...resp) => {
              this.loading = false
              this.PDAInfo = resp[0].data
              this.WgUiInfo = resp[1].data
              this.ifconfigInfo = resp[2].data
            }),
        )
        .catch(err => {
          this.loading = false
          // eslint-disable-next-line no-console
          console.error(err)
        })
  },
}
</script>

<style scoped>
.container .github-project-card:not(:last-child) {
  margin-bottom: 40px;
}
</style>
