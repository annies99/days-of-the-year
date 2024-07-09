import Supabase
import Foundation
import Combine

class SupabaseManager: ObservableObject {
    static let shared = SupabaseManager()
    
    private var client: SupabaseClient
    private var cancellables = Set<AnyCancellable>()
    
    @Published var session: Session?
    @Published var errorMessage: String?
    
    private init() {
        let url = URL(string: "https://qprirsuiqivfiewlnqju.supabase.co")!
        let key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFwcmlyc3VpcWl2Zmlld2xucWp1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTg3NjY1NTcsImV4cCI6MjAzNDM0MjU1N30.pF_BzrvtyoRgMEpcFWXFr7lyLJmsbF09ZirwmRhaUWM"
        client = SupabaseClient(supabaseURL: url, supabaseKey: key)
    }
}
