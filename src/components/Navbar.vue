<script lang="ts" setup>
import { ref, computed } from "vue";
import { useColorMode } from "@vueuse/core";

const mode = useColorMode();
const currentMode = computed(() => mode.value);

import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/components/ui/navigation-menu";
import {
  Sheet,
  SheetContent,
  SheetFooter,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";

import { Button } from "@/components/ui/button";
import { Separator } from "@/components/ui/separator";
import { Menu } from "lucide-vue-next";
import ToggleTheme from "./ToggleTheme.vue";

interface RouteProps {
  href: string;
  label: string;
  isCTA?: boolean;
}

interface FeatureProps {
  title: string;
  description: string;
}

const routeList: RouteProps[] = [
  { href: "#coming-soon", label: "Judges" },
  { href: "#coming-soon", label: "Speakers" },
  { href: "#coming-soon", label: "Mentors" },
  { href: "#coming-soon", label: "Sponsors" },
  { href: "#coming-soon", label: "Awards" },
  { href: "#coming-soon", label: "Register", isCTA: true },
];

const featureList: FeatureProps[] = [
  {
    title: "What is it?",
    description: "A 48-hour hackathon powered by TechSolutions and AMECC.",
  },
  {
    title: "When and where?",
    description: "30–31 August in the city of Cape Town.",
  },
  {
    title: "Details",
    description: "Registration closes on 4 August 2025. Make sure your team is signed up!",
  },
  {
    title: "Need help?",
    description: "If you have any questions, feel free to contact us.",
  },
];

const isOpen = ref<boolean>(false);
</script>

<template>
  <header
    :class="{
      'shadow-light': currentMode === 'light',
      'shadow-dark': currentMode === 'dark',
      'w-[90%] md:w-[70%] lg:w-[75%] lg:max-w-screen-xl mt-8 mx-auto border z-40 rounded-2xl flex justify-between items-center p-2 bg-card shadow-md': true,
    }"
  >
    <!-- Logo -->
    <a href="/" class="font-bold text-lg flex items-center space-x-2">
      <img src="/logo.jpg" alt="Logo AMECCTECH" class="h-11 w-auto" />
      <span>AMECCTECH</span>
    </a>

    <!-- Mobile Menu -->
    <div class="flex items-center lg:hidden">
      <Sheet v-model:open="isOpen">
        <SheetTrigger as-child>
          <Menu @click="isOpen = true" class="cursor-pointer" />
        </SheetTrigger>

        <SheetContent
          side="left"
          class="flex flex-col justify-between rounded-tr-2xl rounded-br-2xl bg-card"
        >
          <div>
            <SheetHeader class="mb-4 ml-4">
              <SheetTitle class="flex items-center space-x-2">
                <a href="/" class="flex items-center space-x-2">
                  <img src="/logo.jpg" alt="Logo AMECCTECH" class="h-9 w-auto" />
                  <span>AMECCTECH</span>
                </a>
              </SheetTitle>
            </SheetHeader>

            <div class="flex flex-col gap-2">
              <Button
                v-for="{ href, label, isCTA } in routeList"
                :key="label"
                as-child
                :variant="isCTA ? 'default' : 'ghost'"
                :class="[ 'justify-start text-base', isCTA ? 'font-semibold px-4 py-2 rounded-lg shadow-md transition-all hover:scale-105' : '' ]"
              >
                <a @click="isOpen = false" :href="href">{{ label }}</a>
              </Button>
            </div>
          </div>

          <SheetFooter class="flex-col sm:flex-col justify-start items-start space-y-2 px-4">
            <Separator />
            <ToggleTheme />
            <Button as-child variant="outline" class="w-full mt-2">
              <a
                href="https://www.instagram.com/amecctech?igsh=Zjk2NWE3c2JhZjRh"
                target="_blank"
                title="Instagram"
                class="flex items-center justify-center"
              >
                <i class="fab fa-instagram text-xl text-foreground hover:text-pink-500 transition-colors"></i>
              </a>
            </Button>
          </SheetFooter>
        </SheetContent>
      </Sheet>
    </div>

    <!-- Desktop Navigation -->
    <NavigationMenu class="hidden lg:block">
      <NavigationMenuList>
        <NavigationMenuItem>
          <NavigationMenuTrigger class="bg-card text-base">About</NavigationMenuTrigger>
          <NavigationMenuContent>
            <div class="grid w-[600px] grid-cols-2 gap-5 p-4">
              <img src="/logo.jpg" alt="AMECCTECH" class="h-full w-full rounded-md object-cover" />
              <ul class="flex flex-col gap-2">
                <li
                  v-for="{ title, description } in featureList"
                  :key="title"
                  class="rounded-md p-3 text-sm hover:bg-muted"
                >
                  <p class="mb-1 font-semibold leading-none text-foreground">{{ title }}</p>
                  <p class="line-clamp-2 text-muted-foreground">{{ description }}</p>
                </li>
              </ul>
            </div>
          </NavigationMenuContent>
        </NavigationMenuItem>

        <NavigationMenuItem>
          <div class="flex">
            <Button
              v-for="{ href, label, isCTA } in routeList"
              :key="label"
              as-child
              variant="ghost"
              :class="[ 'justify-start text-base mx-1', isCTA ? 'bg-[#1E41B2] !text-white font-semibold px-4 py-2 rounded-lg shadow-md hover:bg-[#183695] transition-all hover:scale-105' : '' ]"
            >
              <a :href="href">{{ label }}</a>
            </Button>
          </div>
        </NavigationMenuItem>
      </NavigationMenuList>
    </NavigationMenu>

    <!-- Right Side -->
    <div class="hidden lg:flex items-center space-x-2">
      <ToggleTheme />
      <Button as-child size="sm" variant="ghost" aria-label="Instagram">
        <a
          href="https://www.instagram.com/amecctech?igsh=Zjk2NWE3c2JhZjRh"
          target="_blank"
          title="Instagram"
          class="flex items-center justify-center"
        >
          <i class="fab fa-instagram text-xl text-foreground hover:text-pink-500 transition-colors"></i>
        </a>
      </Button>
    </div>
  </header>
</template>

<style scoped>
.shadow-light {
  box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.085);
}
.shadow-dark {
  box-shadow: inset 0 0 5px rgba(255, 255, 255, 0.141);
}
</style>
