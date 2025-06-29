<script setup lang="ts">
const event = {
  title: "AEMOPorto x TechSolutions Hackathon",
  description:
    "The AEMOPorto x TechSolutions Hackathon brought together Mozambican students in Portugal to tackle the pressing issue of employability. In teams of 3–5, participants had 48 hours to develop sustainable, innovative solutions guided by expert mentors and evaluated by a multidisciplinary jury.",
  highlights: [
    { label: "Date", value: "May 23–25, 2024", icon: "📅" },
    { label: "Location", value: "Porto, Portugal", icon: "📍" },
    { label: "Teams", value: "10 groups of 3–5 participants", icon: "👥" },
    { label: "Theme", value: "Employability Challenge", icon: "🎯" },
  ],
  images: ["/1.jpg", "/2.jpg", "/3.jpg"],
};
</script>

<template>
  <section class="container py-24 md:py-36">
    <div class="max-w-screen-xl mx-auto px-4 space-y-16">
      <div class="text-center space-y-4">
        <span
          class="inline-block text-sm font-medium uppercase tracking-wide text-blue-600 bg-blue-100 dark:bg-blue-900 dark:text-blue-400 px-3 py-1 rounded-full"
        >
          Previous Event
        </span>
        <h2 class="text-4xl md:text-5xl font-extrabold tracking-tight">
          {{ event.title }}
        </h2>
        <p class="text-lg text-muted-foreground max-w-2xl mx-auto">
          Discover how Mozambican students in Portugal came together to turn
          challenges into real-world solutions in just 48 hours.
        </p>
      </div>

      <div class="grid md:grid-cols-2 gap-12 items-center">
        <div class="grid grid-cols-2 gap-4">
          <img
            :src="event.images[0]"
            class="col-span-2 h-64 object-cover rounded-xl shadow-md"
            alt="Event image 1"
          />
          <img
            :src="event.images[1]"
            class="h-40 object-cover rounded-xl shadow-md"
            alt="Event image 2"
          />
          <img
            :src="event.images[2]"
            class="h-40 object-cover rounded-xl shadow-md"
            alt="Event image 3"
          />
        </div>

        <div class="space-y-6">
          <p class="text-base text-muted-foreground leading-relaxed">
            {{ event.description }}
          </p>

          <ul class="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <li
              v-for="(item, i) in event.highlights"
              :key="i"
              class="flex items-start gap-4 bg-gray-100 dark:bg-gray-800 p-4 rounded-lg shadow-sm"
            >
              <div class="text-2xl">{{ item.icon }}</div>
              <div>
                <p class="text-sm text-gray-500 dark:text-gray-400">
                  {{ item.label }}
                </p>
                <p
                  class="text-base font-semibold text-gray-800 dark:text-white"
                >
                  {{ item.value }}
                </p>
              </div>
            </li>
          </ul>

          <div class="pt-6">
            <a
              href="https://hackathonaemotech.com/?fbclid=PAZXh0bgNhZW0CMTEAAac17vvHsB1RWLcce8seL0zOOzgNv2gFHzc0S69qpB_775E3P69fW7shj0oWYA_aem_5U4504KBNEYEwX303r2wew#"
              class="inline-flex items-center gap-2 px-5 py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700 transition-all duration-200"
            >
              View Full Event Recap
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-5 w-5"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M17 8l4 4m0 0l-4 4m4-4H3"
                />
              </svg>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
