<script setup lang="ts">
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
  CardFooter,
} from "@/components/ui/card";

import LinkedInIcon from "@/icons/LinkedInIcon.vue";
import GithubIcon from "@/icons/GithubIcon.vue";
import XIcon from "@/icons/XIcon.vue";

import { reactive } from "vue";

interface SpeakerProps {
  imageUrl: string;
  firstName: string;
  lastName: string;
  titles: string[];
  socialNetworks: SocialNetworkProps[];
  whoIs: string;
  whyHimHer: string;
  willShare: string;
}

interface SocialNetworkProps {
  name: string;
  url: string;
}

const speakersList: SpeakerProps[] = [
  {
    imageUrl: "/obama.jpg",
    firstName: "Sarah",
    lastName: "Johnson",
    titles: ["AI Researcher", "Keynote Speaker"],
    socialNetworks: [
      { name: "LinkedIn", url: "https://linkedin.com/in/sarahjohnson" },
      { name: "X", url: "https://x.com/sarah_johnson" },
    ],
    whoIs:
      "Sarah is a leading AI researcher with a decade of experience in deep learning and NLP.",
    whyHimHer: "Recognized globally for shaping responsible AI strategies.",
    willShare: "Sarah will share the ethical dimensions of generative AI.",
  },
  {
    imageUrl: "/obama.jpg",
    firstName: "Malik",
    lastName: "Banda",
    titles: ["Cybersecurity Architect", "Ethical Hacker"],
    socialNetworks: [
      { name: "Github", url: "https://github.com/malikbanda" },
      { name: "LinkedIn", url: "https://linkedin.com/in/malikbanda" },
    ],
    whoIs:
      "Malik designs secure systems for fintech startups and trains ethical hackers.",
    whyHimHer: "Known for developing zero-trust frameworks for African banks.",
    willShare:
      "He’ll demonstrate real-world attack simulations and defense tactics.",
  },
  {
    imageUrl: "/obama.jpg",
    firstName: "Emily",
    lastName: "Tanaka",
    titles: ["UX Strategist", "Design Leader"],
    socialNetworks: [
      { name: "LinkedIn", url: "https://linkedin.com/in/emilytanaka" },
      { name: "X", url: "https://x.com/emilydesigns" },
    ],
    whoIs:
      "Emily leads UX teams building inclusive digital products for global markets.",
    whyHimHer: "Celebrated for her human-first design approach in edtech.",
    willShare:
      "She will break down accessible design principles for mobile-first apps.",
  },
  {
    imageUrl: "/obama.jpg",
    firstName: "Carlos",
    lastName: "Ndaba",
    titles: ["Data Engineer", "Cloud Consultant"],
    socialNetworks: [
      { name: "LinkedIn", url: "https://linkedin.com/in/carlosndaba" },
    ],
    whoIs:
      "Carlos builds robust data pipelines using modern cloud infrastructure.",
    whyHimHer:
      "Praised for enabling data-driven decisions in healthcare systems.",
    willShare:
      "Carlos will showcase real-time analytics with BigQuery and Kafka.",
  },
];

const hoverStates = reactive<{ [key: number]: boolean }>({});

const socialIcon = (socialName: string) => {
  switch (socialName) {
    case "LinkedIn":
      return LinkedInIcon;
    case "Github":
      return GithubIcon;
    case "X":
      return XIcon;
    default:
      return null;
  }
};
</script>

<template>
  <section id="speakers" class="container lg:w-[75%] py-24 sm:py-32 relative">
    <div class="text-center mb-8">
      <h2 class="text-lg text-blue-600 mb-2 tracking-wider">Speakers</h2>
      <h2 class="text-3xl md:text-4xl font-bold">Meet Our Speakers</h2>
    </div>

    <div
      class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6 relative"
    >
      <div
        v-for="(
          {
            imageUrl,
            firstName,
            lastName,
            titles,
            socialNetworks,
            whoIs,
            whyHimHer,
            willShare,
          },
          index
        ) in speakersList"
        :key="imageUrl + index"
        class="relative group"
        @mouseenter="hoverStates[index] = true"
        @mouseleave="hoverStates[index] = false"
      >
        <!-- Base Card -->
        <Card
          class="bg-muted/60 dark:bg-card flex flex-col h-full overflow-hidden relative cursor-pointer transition-transform"
        >
          <CardHeader class="p-0 gap-0 relative z-10">
            <img
              :src="imageUrl"
              alt=""
              class="w-full aspect-square object-cover saturate-0 transition-all duration-300 group-hover:saturate-100 group-hover:scale-[1.01]"
            />
            <CardTitle class="py-6 pb-4 px-6 select-none">
              {{ firstName }} <span class="text-blue-600">{{ lastName }}</span>
            </CardTitle>
          </CardHeader>

          <CardContent
            v-for="(title, indexTitle) in titles"
            :key="indexTitle"
            :class="{
              'pb-0 text-muted-foreground px-6': true,
              'pb-4': indexTitle === titles.length - 1,
            }"
          >
            {{ title }}<span v-if="indexTitle < titles.length - 1">,</span>
          </CardContent>

          <CardFooter class="space-x-4 mt-auto px-6 pb-6">
            <a
              v-for="{ name, url } in socialNetworks"
              :key="name"
              :href="url"
              target="_blank"
              class="hover:opacity-80 transition-all"
              :aria-label="`Visit ${firstName} on ${name}`"
              @click.stop
            >
              <component :is="socialIcon(name)" />
            </a>
          </CardFooter>
        </Card>

        <!-- Expanded Details -->
        <transition name="fade">
          <div
            v-if="hoverStates[index]"
            class="absolute top-0 left-full ml-4 w-[280px] md:w-[320px] lg:w-[360px] xl:w-[400px] h-full bg-white dark:bg-zinc-900/95 backdrop-blur-lg p-6 z-20 shadow-xl overflow-y-auto border rounded-md"
          >
            <h3 class="text-lg font-semibold mb-2">
              {{ firstName }} {{ lastName }}
            </h3>
            <p class="mb-2">
              <strong>Who is {{ firstName }}?</strong>
            </p>
            <p class="mb-4">{{ whoIs }}</p>

            <p class="mb-2">
              <strong>Why {{ firstName }}?</strong>
            </p>
            <p class="mb-4">{{ whyHimHer }}</p>

            <p class="mb-2">
              <strong>What will {{ firstName }} share?</strong>
            </p>
            <p>{{ willShare }}</p>
          </div>
        </transition>
      </div>
    </div>
  </section>
</template>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
