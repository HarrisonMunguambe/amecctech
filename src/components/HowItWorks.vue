<script setup lang="ts">
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";

interface EventStep {
  badgeTitle: string;
  title: string;
  description: string;
  image: string;
}

const eventSteps: EventStep[] = [
  {
    badgeTitle: "Teams",
    title: "Team Formation",
    description:
      "10 multidisciplinary teams of 3 to 5 participants will be formed to tackle real-world challenges relevant to South Africa and Mozambique.",
    image: "/groups.png",
  },
  {
    badgeTitle: "Mentorship",
    title: "Expert Guidance",
    description:
      "Each team will have a dedicated mentor offering support in tech, design, and strategy throughout the hackathon.",
    image: "/mentors.png",
  },
  {
    badgeTitle: "Build Time",
    title: "Collaborative Development",
    description:
      "Teams will collaborate over 2 days to prototype innovative tech solutions addressing sustainability, education, or digital access.",
    image: "/development.png",
  },
  {
    badgeTitle: "Pitch",
    title: "Project Presentation",
    description:
      "Each team will present their solution to a panel of judges, with 15 minutes to pitch and answer questions.",
    image: "/presentation.png",
  },
  {
    badgeTitle: "Venue",
    title: "On-Site Experience in Cape Town",
    description:
      "Hosted at a tech-friendly venue in the heart of Cape Town, the event fosters innovation, connection, and fun.",
    image: "/venue.png",
  },
  {
    badgeTitle: "Spots",
    title: "Limited Seats",
    description:
      "Only 50 participants will be selected to ensure hands-on support, strong networking, and a quality experience.",
    image: "/limit.png",
  },
];
</script>

<template>
  <section id="how-event-works" class="container py-24 sm:py-32">
    <div class="text-center mb-16">
      <h2
        class="text-lg text-blue-600 tracking-widest font-semibold uppercase mb-2"
      >
        How It Works
      </h2>
      <h1
        class="text-4xl md:text-5xl font-extrabold max-w-3xl mx-auto leading-tight"
      >
        Step-by-Step Breakdown of the AMECCTECH Hackathon
      </h1>
    </div>

    <div class="lg:w-[85%] mx-auto space-y-20">
      <div
        v-for="(step, index) in eventSteps"
        :key="step.title"
        :class="[
          'flex flex-col md:flex-row items-center gap-12',
          index % 2 !== 0 ? 'md:flex-row-reverse' : '',
        ]"
      >
        <div class="w-full md:w-[45%] flex justify-center">
          <img
            :src="step.image"
            :alt="`Visual of ${step.title}`"
            class="rounded-2xl shadow-xl object-cover w-full h-auto max-w-md"
          />
        </div>

        <Card
          class="w-full md:w-[55%] bg-white dark:bg-gray-900 rounded-2xl shadow-lg p-8"
        >
          <CardHeader>
            <Badge
              class="bg-blue-600 text-white mb-4 inline-block px-4 py-1 rounded-full text-xs tracking-wider uppercase"
            >
              {{ step.badgeTitle }}
            </Badge>
            <CardTitle
              class="text-2xl font-bold text-blue-800 dark:text-blue-300 mb-3"
            >
              {{ step.title }}
            </CardTitle>
          </CardHeader>
          <CardContent
            class="text-gray-700 dark:text-gray-300 text-base leading-relaxed"
          >
            {{ step.description }}
          </CardContent>
        </Card>
      </div>
    </div>

    <div class="max-w-3xl mx-auto mt-24 text-center px-6">
      <h3 class="text-3xl font-bold text-blue-700 dark:text-blue-300 mb-4">
        Ready to Create Something Big?
      </h3>
      <p class="text-lg text-gray-700 dark:text-gray-300 mb-6 leading-relaxed">
        Join young Mozambican and African innovators in Cape Town and help shape
        solutions for tomorrow's challenges.
      </p>
      <button
        type="button"
        class="px-10 py-4 bg-gradient-to-r from-blue-600 to-blue-700 hover:from-blue-700 hover:to-blue-800 text-white font-bold rounded-full shadow-lg transition-transform duration-150 active:scale-95"
      >
        Apply Now
      </button>
    </div>
  </section>
</template>

<style scoped>
img:hover {
  transform: scale(1.015);
  transition: transform 0.3s ease;
}
</style>
