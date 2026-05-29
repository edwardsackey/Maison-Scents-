import { Component, ChangeDetectionStrategy, signal } from '@angular/core';
import { RouterLink } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { FooterComponent } from '../../shared/components/footer/footer.component';

interface FaqItem {
  question: string;
  answer: string;
}

@Component({
  selector: 'app-faq',
  standalone: true,
  imports: [RouterLink, NavbarComponent, FooterComponent],
  templateUrl: './faq.component.html',
  styleUrl: './faq.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class FaqComponent {
  openIndex = signal<number | null>(null);

  faqs: FaqItem[] = [
    {
      question: 'Are all your perfumes authentic?',
      answer: 'Absolutely. Every fragrance we sell is 100% genuine and sourced directly from authorized distributors. We never deal in clones, imitations, or "inspired by" products. Your trust is our top priority.'
    },
    {
      question: 'How long does delivery take?',
      answer: 'We deliver nationwide across Ghana. Orders within Accra typically arrive within 1-3 business days. Other regions take 3-5 business days. You\'ll receive a tracking update once your order ships.'
    },
    {
      question: 'Can I return or exchange a product?',
      answer: 'Due to the nature of fragrances, we cannot accept returns on opened products. However, if you receive a damaged or incorrect item, please contact us within 48 hours and we\'ll arrange a replacement immediately.'
    },
    {
      question: 'Do you offer gift wrapping?',
      answer: 'Yes! We offer premium gift packaging for a small additional fee. Just select the gift wrap option at checkout and we\'ll present your fragrance in an elegant box with a personalized note card.'
    },
    {
      question: 'How do I know which size to choose?',
      answer: 'We offer 30ml, 50ml, and 100ml options for most fragrances. If you\'re trying a scent for the first time, the 30ml is perfect for testing. The 50ml is ideal for daily wear, and the 100ml offers the best value for signatures you already love.'
    },
    {
      question: 'What payment methods do you accept?',
      answer: 'We accept Mobile Money (MTN, Vodafone, AirtelTigo), debit/credit cards (Visa, Mastercard), and bank transfers. All transactions are secured with industry-standard encryption.'
    },
    {
      question: 'Do you ship outside Ghana?',
      answer: 'Currently, we deliver exclusively within Ghana. We\'re working on expanding to other West African countries soon. Follow our socials for updates on international shipping availability.'
    },
    {
      question: 'Can I pre-order out-of-stock items?',
      answer: 'Yes! When a product is out of stock, you\'ll see a "Place Pre-Order" option. Pre-orders are fulfilled on a first-come, first-served basis as soon as new stock arrives, typically within 2-4 weeks.'
    }
  ];

  toggle(index: number): void {
    this.openIndex.update(current => current === index ? null : index);
  }

  isOpen(index: number): boolean {
    return this.openIndex() === index;
  }
}
