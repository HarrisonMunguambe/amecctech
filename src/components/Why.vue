<script setup lang="ts">
import { ref } from "vue";
import { ArrowRight } from "lucide-vue-next";

const flippedCard = ref<number | null>(null);

const cards = [
  {
    title: "Learn. Build. Impact.",
    description:
      "Level up your skills, tackle pressing problems, and craft meaningful tech solutions with brilliant minds from across Mozambique.",
    detail:
      "At AMECCTECH 2025, you’ll take on real employability challenges using innovation, teamwork, and problem-solving. It’s more than learning — it’s transformation.",
    icon: "🧠",
    bg: "bg-[#2F7E6B]",
  },
  {
    title: "Win Big. Grow Fast.",
    description:
      "Compete for exciting prizes while accelerating your personal and professional journey — all in just 48 hours.",
    detail:
      "Expect more than awards. The top teams get recognition, exposure, mentorship opportunities, and a chance to continue building beyond the hackathon.",
    icon: "🏆",
    bg: "bg-[#2B3BB5]",
  },
  {
    title: "Network & Elevate",
    description:
      "Connect with tech leaders, recruiters, and innovators who can unlock the next chapter of your journey.",
    detail:
      "Whether you're looking for your next internship, mentor, or co-founder — this event brings the right people into the room. Be seen. Be remembered.",
    icon: "🤝",
    bg: "bg-[#0B0B0B]",
  },
];
</script>

<template>
  <section class="container py-24 md:py-36">
    <div
      class="max-w-screen-xl mx-auto grid md:grid-cols-2 gap-16 px-4 items-start"
    >
      <!-- Text Section -->
      <div>
        <p class="text-sm uppercase font-bold text-blue-600 tracking-wide">
          Why You Can’t Miss This
        </p>
        <h2 class="text-4xl md:text-5xl font-extrabold mt-4 mb-6">
          Join the AMECCTECH Hackathon 2025
        </h2>
        <p class="text-lg text-muted-foreground leading-relaxed">
          The <strong>AMECCTECH Hackathon 2025</strong> isn’t just an event —
          it’s a movement for digital innovation, youth empowerment, and
          real-world solutions. Work in teams, solve meaningful problems, and
          build tools that could shape the future of employability in
          Mozambique.
        </p>
        <p class="text-lg text-muted-foreground mt-4 leading-relaxed">
          With guidance from expert mentors and input from judges across
          industries, this is your chance to innovate boldly and shine brightly.
          Whether you’re a developer, designer, strategist, or creative thinker
          — you belong here.
        </p>

        <div class="mt-8">
          <a
            href="#event-location"
            class="inline-flex items-center gap-2 text-blue-600 font-semibold hover:underline"
          >
            <span class="text-base">View Event Location</span>
            <ArrowRight class="w-5 h-5" />
          </a>
        </div>
      </div>

      <!-- Flip Cards -->
      <div class="space-y-6">
        <div
          v-for="(card, index) in cards"
          :key="index"
          class="flip-container"
          @click="
            flippedCard === index ? (flippedCard = null) : (flippedCard = index)
          "
        >
          <div class="flipper" :class="{ flipped: flippedCard === index }">
            <!-- Front -->
            <div class="card-front" :class="card.bg">
              <div
                class="p-6 rounded-xl shadow-lg text-white flex flex-col gap-4 h-full justify-center"
              >
                <div class="text-3xl">{{ card.icon }}</div>
                <h3 class="text-xl font-bold">{{ card.title }}</h3>
                <p class="text-base leading-relaxed text-white/90">
                  {{ card.description }}
                </p>
                <span class="text-xs text-gray-400 mt-4"
                  >(Tap again to flip)</span
                >
              </div>
            </div>

            <!-- Back -->
            <div
              class="card-back bg-white border rounded-xl shadow-lg p-6 flex flex-col gap-4 justify-center"
            >
              <h3 class="text-xl font-bold text-blue-600">{{ card.title }}</h3>
              <p class="text-base text-muted-foreground">{{ card.detail }}</p>
              <span class="text-xs text-gray-400 mt-4"
                >(Tap again to flip back)</span
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.flip-container {
  perspective: 1000px;
  height: 280px;
  cursor: pointer;
}

.flipper {
  position: relative;
  width: 100%;
  height: 100%;
  transform-style: preserve-3d;
  transition: transform 0.6s ease;
}

.flipper.flipped {
  transform: rotateY(180deg);
}

.card-front,
.card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
  border-radius: 0.75rem;
}

.card-front {
  transform: rotateY(0deg);
  z-index: 2;
}

.card-back {
  transform: rotateY(180deg);
}
</style>
