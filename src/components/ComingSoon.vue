<script setup lang="ts">
import { ref, onMounted } from "vue";

const days = ref(0);
const hours = ref(0);
const minutes = ref(0);
const seconds = ref(0);

const deadline = new Date("2025-08-30T09:00:00").getTime();

const updateCountdown = () => {
  const now = new Date().getTime();
  const distance = deadline - now;

  days.value = Math.floor(distance / (1000 * 60 * 60 * 24));
  hours.value = Math.floor(
    (distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
  );
  minutes.value = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  seconds.value = Math.floor((distance % (1000 * 60)) / 1000);
};

onMounted(() => {
  updateCountdown();
  setInterval(updateCountdown, 1000);
});
</script>

<template>
  <section
    class="w-full min-h-screen bg-gray-100 dark:bg-[#121A29] flex items-center justify-center px-6 py-24 transition-colors duration-500"
    id="coming-soon"
  >
    <div class="max-w-4xl text-center space-y-10 text-gray-800 dark:text-white">
      <div class="text-6xl sm:text-7xl animate-bounce">🚀</div>

      <h1
        class="text-4xl sm:text-5xl md:text-6xl font-extrabold tracking-tight leading-tight"
        :class="{ 'text-[#60A5FA]': true }"
      >
        Coming Soon
      </h1>

      <p class="text-lg sm:text-xl font-medium">
        Are you ready to challenge yourself?
      </p>

      <p
        class="text-xl sm:text-2xl font-semibold text-gray-700 dark:text-gray-200 mt-4 italic"
      >
        Get ready for an intensive 48-hour journey where your talent could play
        a decisive role in advancing health technology
        <span class="text-[#60A5FA] font-bold"
          >in Mozambique, South Africa, and across the African continent</span
        >.
      </p>

      <div class="flex flex-wrap justify-center gap-6 pt-6">
        <div
          v-for="(value, label) in {
            Days: days,
            Hours: hours,
            Minutes: minutes,
            Seconds: seconds,
          }"
          :key="label"
          class="w-24 sm:w-28 h-24 sm:h-28 bg-gray-100 dark:bg-white/10 border border-gray-200 dark:border-white/20 rounded-xl flex flex-col items-center justify-center shadow-lg backdrop-blur-md transition-all duration-300"
        >
          <span
            class="text-3xl sm:text-4xl font-bold text-gray-900 dark:text-white"
          >
            {{ value }}
          </span>
          <span
            class="text-xs sm:text-sm text-gray-500 dark:text-gray-300 uppercase tracking-wide"
          >
            {{ label }}
          </span>
        </div>
      </div>

      <div
        class="mt-8 inline-block px-6 py-3 border border-blue-400 bg-blue-50 dark:bg-white/5 rounded-lg shadow-sm backdrop-blur-md"
      >
        <p
          class="text-sm sm:text-base font-semibold text-blue-800 dark:text-white"
        >
          📅 Save the date:
          <span class="text-[#60A5FA] font-bold">30 August 2025</span> – Cape
          Town
          <img
            src="https://flagcdn.com/w40/za.png"
            alt="South Africa Flag"
            class="inline-block w-6 h-4 ml-1 rounded-sm align-middle"
          />
        </p>
      </div>
    </div>
  </section>
</template>

<style scoped>
@keyframes bounce {
  0%,
  100% {
    transform: translateY(0px);
  }
  50% {
    transform: translateY(-10px);
  }
}
.animate-bounce {
  animation: bounce 2s infinite;
}
</style>
