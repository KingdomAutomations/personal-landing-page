import { Header } from "@/components/Header";
import { Footer } from "@/components/Footer";
import { ProfileSection } from "@/components/ProfileSection";
import { ScheduleSection } from "@/components/ScheduleSection";
import { LinkTreeSection } from "@/components/LinkTreeSection";

export default function HomeNew() {
  return (
    <div className="min-h-screen flex flex-col bg-black text-foreground antialiased">
      <Header />
      
      <main className="flex-grow">
        <div className="max-w-3xl mx-auto px-4 sm:px-6 py-12 space-y-12">
          <ProfileSection />
          <ScheduleSection />
          <LinkTreeSection />
        </div>
      </main>
      
      <Footer />
    </div>
  );
}