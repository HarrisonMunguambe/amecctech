<script setup lang="ts">
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";

interface FAQProps {
  question: string;
  answer: string;
  value: string;
}

const FAQList: FAQProps[] = [
  {
    question: "What is AMECCTECH?",
    answer:
      "AMECCTECH is a dynamic hackathon hosted in Cape Town, co-organized by AMECC and Techsolutions, aimed at empowering students and young professionals to solve real-world challenges using technology.",
    value: "item-1",
  },
  {
    question: "Who can participate in the hackathon?",
    answer:
      "Anyone interested in technology, coding, design, or entrepreneurship is welcome! While the event primarily targets students and young professionals, all levels of experience are encouraged to apply.",
    value: "item-2",
  },
  {
    question: "Is the event free?",
    answer:
      "Yes! Participation in AMECCTECH is completely free, thanks to our generous sponsors and partners. Food, Wi-Fi, and swag will also be provided.",
    value: "item-3",
  },
  {
    question: "Do I need to form a team before joining?",
    answer: "Yes. You ",
    value: "item-4",
  },
  {
    question: "What should I bring?",
    answer:
      "We would advise you to bring a laptop, a notepad to take notes and learn from different speakers and mentors. Everything else will depend on your team and your roles. ",
    value: "item-5",
  },
  {
    question: "Will there be prizes?",
    answer:
      "Absolutely! We have exciting prizes for the top teams, big suprises for big achievers. Register now!",
    value: "item-6",
  },
];
</script>

<template>
  <section id="faq" class="container md:w-[700px] py-24 sm:py-32">
    <div class="text-center mb-8">
      <h2 class="text-lg text-blue-400 text-center mb-2 tracking-wider">
        FAQS
      </h2>

      <h2 class="text-3xl md:text-4xl text-center font-bold">
        Common Questions
      </h2>
    </div>

    <Accordion type="single" collapsible class="AccordionRoot">
      <AccordionItem
        v-for="{ question, answer, value } in FAQList"
        :key="value"
        :value="value"
      >
        <AccordionTrigger class="text-left"> {{ question }} </AccordionTrigger>

        <AccordionContent>{{ answer }}</AccordionContent>
      </AccordionItem>
    </Accordion>

    <h3 class="font-medium mt-4">
      Still have any questions?
      <a href="#" class="text-muted-foreground">
        <a href="#" class="underline">Contact-us</a>
      </a>
    </h3>
  </section>
</template>
