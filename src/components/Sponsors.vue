<script setup lang="ts">
import { Marquee } from "@selemondev/vue3-marquee";
import "@selemondev/vue3-marquee/dist/style.css";

import {
  Crown,
  Vegan,
  Ghost,
  Puzzle,
  Squirrel,
  Cookie,
  Drama,
} from "lucide-vue-next";

interface Sponsor {
  name: string;
  logo: string; // logo image path
  url: string; // link to sponsor's site
}

interface SponsorGroup {
  tier: "Organizers" | "Gold" | "Silver" | "Bronze";
  sponsors: Sponsor[];
}

const sponsorGroups: SponsorGroup[] = [
  {
    tier: "Organizers",
    sponsors: [
      {
        name: "AMECC",
        logo: "/amecc-logo.png",
        url: "https://amecc.vercel.app",
      },
      {
        name: "TechSolution",
        logo: "/amecctech (1).png",
        url: "https://techsolutions.co.mz",
      },
    ],
  },
  {
    tier: "Gold",
    sponsors: [
      {
        name: "StandardBank",
        logo: "/amecctech (1).png",
        url: "https://standardbank.com",
      },
      {
        name: "KPMG",
        logo: "/amecctech (1).png",
        url: "https://kpmg.com",
      },
      {
        name: "KPMG",
        logo: "/amecctech (1).png",
        url: "https://kpmg.com",
      },
      {
        name: "KPMG",
        logo: "/amecctech (1).png",
        url: "https://kpmg.com",
      },
    ],
  },
  {
    tier: "Silver",
    sponsors: [
      {
        name: "MISAU",
        logo: "/amecctech (1).png",
        url: "https://misau.gov.mz",
      },
      {
        name: "StefanuttiStocks",
        logo: "/amecctech (1).png",
        url: "https://stefanuttistocks.com",
      },
      {
        name: "StefanuttiStocks",
        logo: "/amecctech (1).png",
        url: "https://stefanuttistocks.com",
      },
    ],
  },
  {
    tier: "Bronze",
    sponsors: [
      {
        name: "NedBank",
        logo: "/amecctech (1).png",
        url: "https://nedbank.co.za",
      },
      {
        name: "TechSolutions",
        logo: "/amecctech (1).png",
        url: "https://techsolutions.com",
      },
      {
        name: "SomeCompanyWithLogo",
        logo: "/amecctech (1).png",
        url: "https://somecompany.com",
      },
      {
        name: "SomeCompanyWithLogo",
        logo: "/amecctech (1).png",
        url: "https://somecompany.com",
      },
      {
        name: "SomeCompanyWithLogo",
        logo: "/amecctech (1).png",
        url: "https://somecompany.com",
      },
    ],
  },
];

const tierColors: Record<string, string> = {
  Organizers: "text-blue-600",
  Gold: "text-yellow-500",
  Silver: "text-gray-400",
  Bronze: "text-amber-700",
};
</script>

<template>
  <section
    id="sponsors"
    class="w-full px-4 md:px-0 max-w-6xl mx-auto pb-24 sm:pb-32"
  >
    <h2 class="text-2xl md:text-3xl font-semibold text-center mb-12">
      Sponsors & Partners
    </h2>

    <div class="space-y-20">
      <div
        v-for="{ tier, sponsors } in sponsorGroups"
        :key="tier"
        class="text-center"
      >
        <h3
          :class="[
            'text-lg md:text-xl font-bold uppercase tracking-wide mb-6',
            tierColors[tier],
          ]"
        >
          {{ tier === "Organizers" ? tier : `${tier} Sponsors` }}
        </h3>

        <div class="flex flex-wrap justify-center gap-10">
          <a
            v-for="sponsor in sponsors"
            :key="sponsor.name"
            :href="sponsor.url"
            target="_blank"
            rel="noopener noreferrer"
            class="flex flex-col items-center justify-center transition hover:scale-105"
          >
            <img
              :src="sponsor.logo"
              :alt="sponsor.name"
              class="h-20 max-w-[80%] object-contain mb-2"
            />
            <span class="text-sm md:text-base text-gray-700 font-medium">
              {{ sponsor.name }}
            </span>
          </a>
        </div>
      </div>
    </div>
  </section>
</template>
