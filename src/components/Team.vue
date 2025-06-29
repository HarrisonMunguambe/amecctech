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

interface TeamProps {
  imageUrl: string;
  firstName: string;
  lastName: string;
  positions: string[];
  socialNetworks: SocialNetworkProps[];
}

interface SocialNetworkProps {
  name: string;
  url: string;
}

const teamList: TeamProps[] = [
  {
    imageUrl: "/obama.jpg",
    firstName: "Barack",
    lastName: "Obama",
    positions: ["Líder de Tecnologia"],
    socialNetworks: [
      {
        name: "LinkedIn",
        url: "https://www.linkedin.com/in/nilton-novele-82211821b/",
      },
      { name: "Github", url: "https://github.com/NiltonNovele" },
      { name: "X", url: "https://x.com/nilton_novele" },
    ],
  },
  {
    imageUrl: "/obama.jpg",
    firstName: "Shirley",
    lastName: "Bionda",
    positions: ["Líder de Marketing"],
    socialNetworks: [
      { name: "LinkedIn", url: "https://www.linkedin.com/in/" },
      { name: "X", url: "https://x.com/Biondashirley05" },
    ],
  },
  {
    imageUrl: "/obama.jpg",
    firstName: "Henzel",
    lastName: "Tibana",
    positions: ["Líder de Operações"],
    socialNetworks: [
      {
        name: "LinkedIn",
        url: "https://www.linkedin.com/in/henzel-tibana-a07068211/",
      },
    ],
  },
  {
    imageUrl: "/obama.jpg",
    firstName: "Anderson",
    lastName: "Manjate",
    positions: ["Líder de Relações Externas"],
    socialNetworks: [
      {
        name: "LinkedIn",
        url: "https://www.linkedin.com/in/anderson-joão-manjate-75abaa31a/",
      },
    ],
  },
];

const mentorsList: TeamProps[] = [
  {
    imageUrl: "/obama.jpg",
    firstName: "Alice",
    lastName: "Mentora",
    positions: ["AI Mentor"],
    socialNetworks: [
      { name: "LinkedIn", url: "https://linkedin.com/in/alice" },
    ],
  },
  {
    imageUrl: "/obama.jpg",
    firstName: "Carlos",
    lastName: "Mentor",
    positions: ["UI/UX Mentor"],
    socialNetworks: [
      { name: "Github", url: "https://github.com/carlosmentor" },
    ],
  },
];

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

const hoverStates = reactive<{ [key: number]: boolean }>({});
</script>

<template>
  <section id="team" class="container lg:w-[75%] py-24 sm:py-32 relative">
    <div class="text-center mb-8">
      <h2 class="text-lg text-blue-600 tracking-wider">Panel of jurors</h2>
      <h2 class="text-3xl md:text-4xl font-bold">Judges</h2>
    </div>

    <div
      class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8 relative"
    >
      <div
        v-for="(member, index) in teamList"
        :key="member.imageUrl + index"
        class="relative group"
        @mouseenter="hoverStates[index] = true"
        @mouseleave="hoverStates[index] = false"
      >
        <Card
          class="bg-muted/60 dark:bg-card flex flex-col h-full overflow-hidden relative"
        >
          <CardHeader class="p-0">
            <img
              :src="member.imageUrl"
              alt=""
              class="w-full aspect-square object-cover saturate-0 transition-all duration-300 group-hover:saturate-100 group-hover:scale-[1.01]"
            />
            <CardTitle class="py-6 pb-4 px-6">
              {{ member.firstName }}
              <span class="text-blue-600">{{ member.lastName }}</span>
            </CardTitle>
          </CardHeader>

          <CardContent
            v-for="(position, i) in member.positions"
            :key="i"
            :class="{
              'pb-0 text-muted-foreground px-6': true,
              'pb-4': i === member.positions.length - 1,
            }"
          >
            {{ position }}<span v-if="i < member.positions.length - 1">,</span>
          </CardContent>

          <CardFooter class="space-x-4 mt-auto px-6 pb-6">
            <a
              v-for="{ name, url } in member.socialNetworks"
              :key="name"
              :href="url"
              target="_blank"
              class="hover:opacity-80 transition-all"
              :aria-label="`Visite nossa página no ${name}`"
              @click.stop
            >
              <component :is="socialIcon(name)" />
            </a>
          </CardFooter>
        </Card>

        <transition name="fade">
          <div
            v-if="hoverStates[index]"
            class="absolute top-0 left-full ml-4 w-[280px] md:w-[320px] lg:w-[360px] xl:w-[400px] h-full bg-white dark:bg-zinc-900/95 backdrop-blur-lg p-6 z-20 shadow-xl overflow-y-auto border rounded-md"
          >
            <h3 class="text-lg font-semibold mb-2">
              {{ member.firstName }} {{ member.lastName }}
            </h3>
            <p class="mb-2 text-sm text-muted-foreground">Position(s):</p>
            <ul class="mb-4 list-disc list-inside text-sm">
              <li v-for="(p, i) in member.positions" :key="i">{{ p }}</li>
            </ul>
            <p class="text-sm text-muted-foreground">Socials:</p>
            <ul class="text-sm">
              <li v-for="{ name, url } in member.socialNetworks" :key="name">
                <a
                  :href="url"
                  class="text-blue-500 hover:underline"
                  target="_blank"
                  >{{ name }}</a
                >
              </li>
            </ul>
          </div>
        </transition>
      </div>
    </div>

    <div class="mt-24">
      <div class="text-center mb-8">
        <h2 class="text-lg text-emerald-600 tracking-wider">Support Team</h2>
        <h2 class="text-2xl md:text-3xl font-semibold">Mentors</h2>
      </div>

      <div
        class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6 relative"
      >
        <div
          v-for="(mentor, index) in mentorsList"
          :key="mentor.imageUrl + mentor.firstName"
          class="relative group"
          @mouseenter="hoverStates[1000 + index] = true"
          @mouseleave="hoverStates[1000 + index] = false"
        >
          <Card
            class="bg-muted/50 dark:bg-card flex flex-col h-full overflow-hidden border rounded-md"
          >
            <CardHeader class="p-0">
              <img
                :src="mentor.imageUrl"
                alt=""
                class="w-full aspect-square object-cover saturate-0 transition-all duration-300 group-hover:saturate-100 group-hover:scale-[1.01]"
              />
              <CardTitle class="py-4 px-4 text-base">
                {{ mentor.firstName }}
                <span class="text-emerald-600">{{ mentor.lastName }}</span>
              </CardTitle>
            </CardHeader>

            <CardContent
              v-for="(position, i) in mentor.positions"
              :key="i"
              class="pb-1 text-sm text-muted-foreground px-4"
            >
              {{ position }}
            </CardContent>

            <CardFooter class="space-x-4 mt-auto px-4 pb-4">
              <a
                v-for="{ name, url } in mentor.socialNetworks"
                :key="name"
                :href="url"
                target="_blank"
                class="hover:opacity-80 transition-all"
                :aria-label="`Visite nossa página no ${name}`"
              >
                <component :is="socialIcon(name)" class="w-4 h-4" />
              </a>
            </CardFooter>
          </Card>

          <transition name="fade">
            <div
              v-if="hoverStates[1000 + index]"
              class="absolute top-0 left-full ml-4 w-[280px] md:w-[320px] lg:w-[360px] xl:w-[400px] h-full bg-white dark:bg-zinc-900/95 backdrop-blur-lg p-6 z-20 shadow-xl overflow-y-auto border rounded-md"
            >
              <h3 class="text-lg font-semibold mb-2">
                {{ mentor.firstName }} {{ mentor.lastName }}
              </h3>
              <p class="mb-2 text-sm text-muted-foreground">Expertise:</p>
              <ul class="mb-4 list-disc list-inside text-sm">
                <li v-for="(p, i) in mentor.positions" :key="i">{{ p }}</li>
              </ul>
              <p class="text-sm text-muted-foreground">Socials:</p>
              <ul class="text-sm">
                <li v-for="{ name, url } in mentor.socialNetworks" :key="name">
                  <a
                    :href="url"
                    class="text-emerald-500 hover:underline"
                    target="_blank"
                    >{{ name }}</a
                  >
                </li>
              </ul>
            </div>
          </transition>
        </div>
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
